



CREATE DATABASE stusystem;

USE stusystem;
-- ----------------------------------------------------------------------------------------------------------------

CREATE TABLE classes(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	cname VARCHAR(20),
	college VARCHAR(50)
);


INSERT INTO classes(cname,college) VALUES('计算机1班','计算机学院'),
('计算机2班','计算机学院'),('文理1班','文理学院'),('文理2班','文理学院'),
('法学院1班','法学院'),('法学2班','法学院');

-- ----------------------------------------------------------------------------------------------------------------

CREATE TABLE student(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	sname VARCHAR(20) ,
	sex VARCHAR(2) ,
	address VARCHAR(50) ,
	uname VARCHAR(20) NOT NULL UNIQUE,
	pwd VARCHAR(20)  ,
	simg VARCHAR(20),
	cid INT 
);

ALTER TABLE student ADD CONSTRAINT 
FOREIGN KEY(cid) REFERENCES classes(cid);

INSERT INTO student(sname,sex,address,uname,pwd,simg,cid)  
VALUES('李萍','女','湖南省长沙市','liping','123456','liping.jpg',1);

INSERT INTO student(sname,sex,address,uname,pwd,simg,cid) 
VALUES ('王浩','男','江西省九江市','wanghao','123456','wanghao.jpg',2);

INSERT INTO student(sname,sex,address,uname,pwd,simg,cid)  
VALUES('冯玉南','男','湖北省武汉市','fengyunan','123456','fengyunan.jpg',3);

INSERT INTO student(sname,sex,address,uname,pwd,simg,cid)  
VALUES('陈香','女','海南省三亚市','chenxiang','123456','chenxiang.jpg',4);

INSERT INTO student(sname,sex,address,uname,pwd,simg,cid)  
VALUES('李成峰','男','浙江省杭州市','lichengfeng','123456','lichengfeng.jpg',6);

INSERT INTO student(sname,sex,address,uname,pwd,simg,cid)  
VALUES('米雪','女','江苏省南京市','mixue','123456','mixue.jpg',5);

-- -----------------------------------------------------------------------------------------------------------------

CREATE TABLE admin(
	aid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(20) NOT NULL UNIQUE,
	pwd VARCHAR(20)
);

INSERT INTO admin(uname,pwd) VALUES('admind','admind');


-- ----------------------------------------------------------------------------------------------------------------
DROP TABLE course ;
CREATE TABLE course(
	coid INT PRIMARY KEY AUTO_INCREMENT,
	coname VARCHAR(20) UNIQUE,
	cimg VARCHAR(20),
	teacher VARCHAR(20)
);

INSERT INTO course(coname,cimg,teacher) VALUES('计算机组成原理','jisuanji.jpg','陈佩');
INSERT INTO course(coname,cimg,teacher)  VALUES('网络编程','wangluo.jpg','董立');

INSERT INTO course(coname,cimg,teacher)  VALUES('大学物理','daxuewuli.jpg','赵新');
INSERT INTO course(coname,cimg,teacher)  VALUES('微积分','weijifen.jpg','李晓松');

INSERT INTO course(coname,cimg,teacher) VALUES('宪法','xianfa.jpg','宋和');
INSERT INTO course(coname,cimg,teacher)  VALUES('法学导论','faxue.jpg','李子明');

INSERT INTO course(coname,cimg,teacher) VALUES('CAD教程','cad.jpg','周旋');
INSERT INTO course(coname,cimg,teacher)  VALUES('工业设计基础','gongye.jpg','王子涛');


SELECT * FROM course;

-- -------------------------------------------------------------------------------------------------------------

DROP TABLE sc;
CREATE TABLE sc(
	sid INT ,
	coid INT,
	PRIMARY KEY(sid,coid)
);

INSERT INTO sc(sid,coid) VALUES(1,1);
INSERT INTO sc(sid,coid) VALUES(1,2);
INSERT INTO sc(sid,coid) VALUES(2,3);
INSERT INTO sc(sid,coid) VALUES(2,4);
INSERT INTO sc(sid,coid) VALUES(3,5);
INSERT INTO sc(sid,coid) VALUES(3,6);

-- ------------------------------------------------------------------------------------------------------------

CREATE TABLE score(
	sid INT ,
	coid INT,
	score INT,
	PRIMARY KEY(sid,coid)
);

ALTER TABLE  score ADD CONSTRAINT FOREIGN KEY(sid,coid) 
REFERENCES sc(sid,coid)  ON DELETE CASCADE;

INSERT INTO score(sid,coid,score) VALUES(1,1,80);
INSERT INTO score(sid,coid,score) VALUES(1,2,85);
INSERT INTO score(sid,coid,score) VALUES(2,3,73);
INSERT INTO score(sid,coid,score) VALUES(2,4,72);
INSERT INTO score(sid,coid,score) VALUES(3,5,68);
INSERT INTO score(sid,coid,score) VALUES(3,6,77);
-- --------------------------------------------------------------------------------------------------------------

CREATE TABLE photo(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	pname VARCHAR(20),
	uname VARCHAR(20) NOT NULL UNIQUE
);


INSERT INTO  photo(pname,uname) VALUES('liping.jpg','liping');
INSERT INTO  photo(pname,uname) VALUES('wanghao.jpg','wanghao');
INSERT INTO  photo(pname,uname) VALUES('fengyunan.jpg','fengyunan');
INSERT INTO  photo(pname,uname) VALUES('chenxiang.jpg','chenxiang');
INSERT INTO  photo(pname,uname) VALUES('lichengfeng.jpg','lichengfeng');
INSERT INTO  photo(pname,uname) VALUES('mixue.jpg','mixue');



-- --------------------------------------------------------------------------------------------------------------








