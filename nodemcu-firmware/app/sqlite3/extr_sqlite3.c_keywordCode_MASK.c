#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
#define  TK_ABORT 201 
#define  TK_ALL 200 
#define  TK_AND 199 
#define  TK_AS 198 
#define  TK_ASC 197 
#define  TK_BEGIN 196 
#define  TK_BETWEEN 195 
#define  TK_BY 194 
#define  TK_CASE 193 
#define  TK_CHECK 192 
#define  TK_COLLATE 191 
#define  TK_COMMIT 190 
#define  TK_CONFLICT 189 
#define  TK_CONSTRAINT 188 
#define  TK_CREATE 187 
#define  TK_CTIME_KW 186 
#define  TK_DEFAULT 185 
#define  TK_DEFERRED 184 
#define  TK_DELETE 183 
#define  TK_DESC 182 
#define  TK_DISTINCT 181 
#define  TK_DROP 180 
#define  TK_ELSE 179 
#define  TK_END 178 
#define  TK_ESCAPE 177 
#define  TK_EXCLUSIVE 176 
#define  TK_EXISTS 175 
#define  TK_FAIL 174 
#define  TK_FROM 173 
#define  TK_GROUP 172 
#define  TK_HAVING 171 
#define  TK_IF 170 
#define  TK_IGNORE 169 
#define  TK_IMMEDIATE 168 
#define  TK_IN 167 
#define  TK_INDEX 166 
#define  TK_INDEXED 165 
#define  TK_INSERT 164 
#define  TK_INTO 163 
#define  TK_IS 162 
#define  TK_ISNULL 161 
#define  TK_JOIN 160 
#define  TK_JOIN_KW 159 
#define  TK_KEY 158 
#define  TK_LIKE_KW 157 
#define  TK_LIMIT 156 
#define  TK_MATCH 155 
#define  TK_NOT 154 
#define  TK_NOTNULL 153 
#define  TK_NULL 152 
#define  TK_OF 151 
#define  TK_OFFSET 150 
#define  TK_ON 149 
#define  TK_OR 148 
#define  TK_ORDER 147 
#define  TK_PRIMARY 146 
#define  TK_RELEASE 145 
#define  TK_REPLACE 144 
#define  TK_ROLLBACK 143 
#define  TK_SAVEPOINT 142 
#define  TK_SELECT 141 
#define  TK_SET 140 
#define  TK_TABLE 139 
#define  TK_TEMP 138 
#define  TK_THEN 137 
#define  TK_TO 136 
#define  TK_TRANSACTION 135 
#define  TK_UNIQUE 134 
#define  TK_UPDATE 133 
#define  TK_USING 132 
#define  TK_VALUES 131 
#define  TK_WHEN 130 
#define  TK_WHERE 129 
#define  TK_WITHOUT 128 
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char const FUNC2 (char const) ; 

__attribute__((used)) static int FUNC3(const char *z, int n, int *pType){
  /* zText[] encodes 553 bytes of keywords in 373 bytes */
  /*   CONSTRAINTOFFSETABLEFTHENDESCAPELSELECTRANSACTIONATURALLIKEY       */
  /*   SAVEPOINTEMPORARYWITHOUTERELEASEXCLUSIVEXISTSBEGINDEXEDELETE       */
  /*   BETWEENOTNULLIMITCASECOLLATECREATECURRENT_DATEGROUPDATEIGNORE      */
  /*   GEXPRIMARYIMMEDIATEJOINNEREPLACEMATCHECKVALUESWHENWHEREABORT       */
  /*   ANDEFAULTASCOMMITCONFLICTCROSSCURRENT_TIMESTAMPDEFERREDISTINCT     */
  /*   DROPFAILFROMFULLGLOBYHAVINGIFINSERTISNULLORDERIGHTROLLBACK         */
  /*   UNIQUEUSING                                                        */
  static const char zText[372] = {
    'C','O','N','S','T','R','A','I','N','T','O','F','F','S','E','T','A','B',
    'L','E','F','T','H','E','N','D','E','S','C','A','P','E','L','S','E','L',
    'E','C','T','R','A','N','S','A','C','T','I','O','N','A','T','U','R','A',
    'L','L','I','K','E','Y','S','A','V','E','P','O','I','N','T','E','M','P',
    'O','R','A','R','Y','W','I','T','H','O','U','T','E','R','E','L','E','A',
    'S','E','X','C','L','U','S','I','V','E','X','I','S','T','S','B','E','G',
    'I','N','D','E','X','E','D','E','L','E','T','E','B','E','T','W','E','E',
    'N','O','T','N','U','L','L','I','M','I','T','C','A','S','E','C','O','L',
    'L','A','T','E','C','R','E','A','T','E','C','U','R','R','E','N','T','_',
    'D','A','T','E','G','R','O','U','P','D','A','T','E','I','G','N','O','R',
    'E','G','E','X','P','R','I','M','A','R','Y','I','M','M','E','D','I','A',
    'T','E','J','O','I','N','N','E','R','E','P','L','A','C','E','M','A','T',
    'C','H','E','C','K','V','A','L','U','E','S','W','H','E','N','W','H','E',
    'R','E','A','B','O','R','T','A','N','D','E','F','A','U','L','T','A','S',
    'C','O','M','M','I','T','C','O','N','F','L','I','C','T','C','R','O','S',
    'S','C','U','R','R','E','N','T','_','T','I','M','E','S','T','A','M','P',
    'D','E','F','E','R','R','E','D','I','S','T','I','N','C','T','D','R','O',
    'P','F','A','I','L','F','R','O','M','F','U','L','L','G','L','O','B','Y',
    'H','A','V','I','N','G','I','F','I','N','S','E','R','T','I','S','N','U',
    'L','L','O','R','D','E','R','I','G','H','T','R','O','L','L','B','A','C',
    'K','U','N','I','Q','U','E','U','S','I','N','G',
  };
  static const unsigned char aHash[127] = {
      79,  70,  83,  50,   0,  24,   0,   0,  56,   0,  54,   0,   0,
       6,  47,   0,  33,   0,  82,  57,  77,  78,   0,  15,   0,   0,
      22,   0,  20,   0,   0,  48,   4,   0,   0,   0,   0,  42,  43,
       0,  41,   0,   0,   0,  60,  49,   0,  62,  67,   0,   0,  30,
       0,  68,   0,   0,   0,   0,  35,   0,  11,   0,  13,  75,  14,
       0,   0,   0,  19,  71,  36,   0,  32,  55,  45,   0,  61,   0,
      66,   0,   0,  65,   0,   0,   0,   0,   0,  63,   0,  74,   0,
       1,  73,   0,  59,   0,  29,  53,  76,   0,   0,  85,   0,  80,
      38,  25,  40,   0,   0,   3,   2,   0,  81,   0,   0,   0,   0,
      17,   0,  58,  52,  39,   0,   8,  37,   0,  84,
  };
  static const unsigned char aNext[85] = {
       0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  12,
       0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   9,   0,
       0,   0,   0,  23,   0,   0,   0,   0,   0,   0,  18,   0,   0,
       0,   0,   0,   0,   0,  34,   0,   0,  10,   0,   0,   5,   0,
      28,   0,   0,  26,   0,   0,   0,   0,  31,   0,   0,   0,   0,
       0,  44,   0,  21,   0,  69,  64,   0,  72,   0,   0,   7,   0,
       0,  51,  27,  16,   0,  46,   0,
  };
  static const unsigned char aLen[85] = {
      10,   4,   2,   2,   6,   2,   3,   5,   4,   4,   3,   4,   6,
       4,   6,  11,   2,   7,   3,   4,   3,   9,   9,   4,   2,   7,
       5,   7,   2,   9,   6,   5,   7,   5,   6,   7,   7,   3,   4,
       5,   4,   7,   6,  12,   5,   6,   6,   6,   7,   9,   4,   5,
       7,   5,   5,   6,   4,   5,   5,   3,   7,   3,   6,   8,   5,
      17,  12,   8,   8,   2,   4,   4,   4,   4,   4,   2,   6,   2,
       6,   6,   5,   5,   8,   6,   5,
  };
  static const unsigned short int aOffset[85] = {
       0,   7,   7,   9,  10,  10,  13,  15,  18,  21,  23,  25,  26,
      31,  33,  38,  47,  48,  53,  55,  57,  60,  68,  68,  72,  77,
      81,  85,  89,  91,  99, 105, 108, 108, 114, 120, 126, 126, 129,
     132, 137, 141, 148, 154, 166, 169, 175, 179, 184, 191, 200, 202,
     206, 213, 216, 221, 227, 231, 236, 241, 243, 250, 252, 258, 266,
     271, 271, 288, 295, 296, 303, 307, 311, 315, 319, 322, 324, 330,
     332, 338, 344, 348, 353, 361, 367,
  };
  static const unsigned char aCode[85] = {
    TK_CONSTRAINT, TK_INTO,       TK_IN,         TK_TO,         TK_OFFSET,
    TK_OF,         TK_SET,        TK_TABLE,      TK_JOIN_KW,    TK_THEN,
    TK_END,        TK_DESC,       TK_ESCAPE,     TK_ELSE,       TK_SELECT,
    TK_TRANSACTION,TK_ON,         TK_JOIN_KW,    TK_ALL,        TK_LIKE_KW,
    TK_KEY,        TK_SAVEPOINT,  TK_TEMP,       TK_TEMP,       TK_OR,
    TK_WITHOUT,    TK_JOIN_KW,    TK_RELEASE,    TK_AS,         TK_EXCLUSIVE,
    TK_EXISTS,     TK_BEGIN,      TK_INDEXED,    TK_INDEX,      TK_DELETE,
    TK_BETWEEN,    TK_NOTNULL,    TK_NOT,        TK_NULL,       TK_LIMIT,
    TK_CASE,       TK_COLLATE,    TK_CREATE,     TK_CTIME_KW,   TK_GROUP,
    TK_UPDATE,     TK_IGNORE,     TK_LIKE_KW,    TK_PRIMARY,    TK_IMMEDIATE,
    TK_JOIN,       TK_JOIN_KW,    TK_REPLACE,    TK_MATCH,      TK_CHECK,
    TK_VALUES,     TK_WHEN,       TK_WHERE,      TK_ABORT,      TK_AND,
    TK_DEFAULT,    TK_ASC,        TK_COMMIT,     TK_CONFLICT,   TK_JOIN_KW,
    TK_CTIME_KW,   TK_CTIME_KW,   TK_DEFERRED,   TK_DISTINCT,   TK_IS,
    TK_DROP,       TK_FAIL,       TK_FROM,       TK_JOIN_KW,    TK_LIKE_KW,
    TK_BY,         TK_HAVING,     TK_IF,         TK_INSERT,     TK_ISNULL,
    TK_ORDER,      TK_JOIN_KW,    TK_ROLLBACK,   TK_UNIQUE,     TK_USING,
  };
  int i, j;
  const char *zKW;
  if( n>=2 ){
    i = ((FUNC0(z[0])*4) ^ (FUNC0(z[n-1])*3) ^ n) % 127;
    for(i=((int)aHash[i])-1; i>=0; i=((int)aNext[i])-1){
      if( aLen[i]!=n ) continue;
      j = 0;
      zKW = &zText[aOffset[i]];
#ifdef SQLITE_ASCII
      while( j<n && (z[j]&~0x20)==zKW[j] ){ j++; }
#endif
#ifdef SQLITE_EBCDIC
      while( j<n && toupper(z[j])==zKW[j] ){ j++; }
#endif
      if( j<n ) continue;
      FUNC1( i==0 ); /* CONSTRAINT */
      FUNC1( i==1 ); /* INTO */
      FUNC1( i==2 ); /* IN */
      FUNC1( i==3 ); /* TO */
      FUNC1( i==4 ); /* OFFSET */
      FUNC1( i==5 ); /* OF */
      FUNC1( i==6 ); /* SET */
      FUNC1( i==7 ); /* TABLE */
      FUNC1( i==8 ); /* LEFT */
      FUNC1( i==9 ); /* THEN */
      FUNC1( i==10 ); /* END */
      FUNC1( i==11 ); /* DESC */
      FUNC1( i==12 ); /* ESCAPE */
      FUNC1( i==13 ); /* ELSE */
      FUNC1( i==14 ); /* SELECT */
      FUNC1( i==15 ); /* TRANSACTION */
      FUNC1( i==16 ); /* ON */
      FUNC1( i==17 ); /* NATURAL */
      FUNC1( i==18 ); /* ALL */
      FUNC1( i==19 ); /* LIKE */
      FUNC1( i==20 ); /* KEY */
      FUNC1( i==21 ); /* SAVEPOINT */
      FUNC1( i==22 ); /* TEMPORARY */
      FUNC1( i==23 ); /* TEMP */
      FUNC1( i==24 ); /* OR */
      FUNC1( i==25 ); /* WITHOUT */
      FUNC1( i==26 ); /* OUTER */
      FUNC1( i==27 ); /* RELEASE */
      FUNC1( i==28 ); /* AS */
      FUNC1( i==29 ); /* EXCLUSIVE */
      FUNC1( i==30 ); /* EXISTS */
      FUNC1( i==31 ); /* BEGIN */
      FUNC1( i==32 ); /* INDEXED */
      FUNC1( i==33 ); /* INDEX */
      FUNC1( i==34 ); /* DELETE */
      FUNC1( i==35 ); /* BETWEEN */
      FUNC1( i==36 ); /* NOTNULL */
      FUNC1( i==37 ); /* NOT */
      FUNC1( i==38 ); /* NULL */
      FUNC1( i==39 ); /* LIMIT */
      FUNC1( i==40 ); /* CASE */
      FUNC1( i==41 ); /* COLLATE */
      FUNC1( i==42 ); /* CREATE */
      FUNC1( i==43 ); /* CURRENT_DATE */
      FUNC1( i==44 ); /* GROUP */
      FUNC1( i==45 ); /* UPDATE */
      FUNC1( i==46 ); /* IGNORE */
      FUNC1( i==47 ); /* REGEXP */
      FUNC1( i==48 ); /* PRIMARY */
      FUNC1( i==49 ); /* IMMEDIATE */
      FUNC1( i==50 ); /* JOIN */
      FUNC1( i==51 ); /* INNER */
      FUNC1( i==52 ); /* REPLACE */
      FUNC1( i==53 ); /* MATCH */
      FUNC1( i==54 ); /* CHECK */
      FUNC1( i==55 ); /* VALUES */
      FUNC1( i==56 ); /* WHEN */
      FUNC1( i==57 ); /* WHERE */
      FUNC1( i==58 ); /* ABORT */
      FUNC1( i==59 ); /* AND */
      FUNC1( i==60 ); /* DEFAULT */
      FUNC1( i==61 ); /* ASC */
      FUNC1( i==62 ); /* COMMIT */
      FUNC1( i==63 ); /* CONFLICT */
      FUNC1( i==64 ); /* CROSS */
      FUNC1( i==65 ); /* CURRENT_TIMESTAMP */
      FUNC1( i==66 ); /* CURRENT_TIME */
      FUNC1( i==67 ); /* DEFERRED */
      FUNC1( i==68 ); /* DISTINCT */
      FUNC1( i==69 ); /* IS */
      FUNC1( i==70 ); /* DROP */
      FUNC1( i==71 ); /* FAIL */
      FUNC1( i==72 ); /* FROM */
      FUNC1( i==73 ); /* FULL */
      FUNC1( i==74 ); /* GLOB */
      FUNC1( i==75 ); /* BY */
      FUNC1( i==76 ); /* HAVING */
      FUNC1( i==77 ); /* IF */
      FUNC1( i==78 ); /* INSERT */
      FUNC1( i==79 ); /* ISNULL */
      FUNC1( i==80 ); /* ORDER */
      FUNC1( i==81 ); /* RIGHT */
      FUNC1( i==82 ); /* ROLLBACK */
      FUNC1( i==83 ); /* UNIQUE */
      FUNC1( i==84 ); /* USING */
      *pType = aCode[i];
      break;
    }
  }
  return n;
}