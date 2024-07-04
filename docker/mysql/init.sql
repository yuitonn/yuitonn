DROP DATABASE IF EXISTS posse;
CREATE DATABASE posse;
USE posse;

CREATE TABLE quiz_data (
    id INT(11) AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    name VARCHAR(255) NOT NULL COMMENT '問題',
    description VARCHAR(255)  COMMENT '説明',
    image_data BLOB COMMENT '画像'
);

INSERT INTO quiz_data (name, description, image_data) VALUES
('日本のIT人材が2030年には最大どれくらい不足すると言われているでしょうか？', '経済産業省 2019年3月 - IT 人材需給に関する調査', 'img-quiz01.png'),
('既存業界のビジネスと、先進的なテクノロジーを結びつけて生まれた、新しいビジネスのことをなんと言うでしょう？', '', 'img-quiz02.png'),
('IoTとは何の略でしょう？', '', 'img-quiz03.png'),
('サイバー空間とフィジカル空間を高度に融合させたシステムにより、経済発展と社会的課題の解決を両立する、人間中心の社会のことをなんと言うでしょう？', 'Society5.0 - 科学技術政策 - 内閣府', 'img-quiz04.png'),
('イギリスのコンピューター科学者であるギャビン・ウッド氏が提唱した、ブロックチェーン技術を活用した「次世代分散型インターネット」のことをなんと言うでしょう？', '', 'img-quiz05.png'),
('先進テクノロジー活用企業と出遅れた企業の収益性の差はどれくらいあると言われているでしょうか？', 'Accenture Technology Vision 2021', 'img-quiz06.png');



CREATE TABLE quiz_choices (
    id INT(11) AUTO_INCREMENT PRIMARY KEY COMMENT 'ID',
    quiz_id INT(11) NOT NULL COMMENT '指定のクイズ',
    choices VARCHAR(225) COMMENT'選択肢',
    answer INT(11) COMMENT'判定'
);

INSERT INTO quiz_choices (quiz_id, choices, answer) VALUES
(1, '約28万人', 0),
(1, '約79万人', 1),
(1, '約183万人', 0),
(2, 'INTECH', 0),
(2, 'BIZZTECH', 0),
(2, 'X-TECH', 1),
(3, 'Internet of Things', 1),
(3, 'Integrate into Technology', 0),
(3, 'Information on Tool', 0),
(4, 'Society 5.0', 1),
(4, 'CyPhy', 0),
(4, 'SDGs', 0),
(5, 'Web3.0', 1),
(5, 'NFT', 0),
(5, 'メタバース', 0),
(6, '約2倍', 0),
(6, '約5倍', 1),
(6, '約11倍', 0);