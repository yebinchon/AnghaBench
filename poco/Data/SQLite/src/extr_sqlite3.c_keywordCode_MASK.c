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
 int* aKWCode ; 
 scalar_t__* aKWHash ; 
 int* aKWLen ; 
 scalar_t__* aKWNext ; 
 size_t* aKWOffset ; 
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char const FUNC2 (char const) ; 
 char* zKWText ; 

__attribute__((used)) static int FUNC3(const char *z, int n, int *pType){
  int i, j;
  const char *zKW;
  if( n>=2 ){
    i = ((FUNC0(z[0])*4) ^ (FUNC0(z[n-1])*3) ^ n) % 127;
    for(i=((int)aKWHash[i])-1; i>=0; i=((int)aKWNext[i])-1){
      if( aKWLen[i]!=n ) continue;
      j = 0;
      zKW = &zKWText[aKWOffset[i]];
#ifdef SQLITE_ASCII
      while( j<n && (z[j]&~0x20)==zKW[j] ){ j++; }
#endif
#ifdef SQLITE_EBCDIC
      while( j<n && toupper(z[j])==zKW[j] ){ j++; }
#endif
      if( j<n ) continue;
      FUNC1( i==0 ); /* REINDEX */
      FUNC1( i==1 ); /* INDEXED */
      FUNC1( i==2 ); /* INDEX */
      FUNC1( i==3 ); /* DESC */
      FUNC1( i==4 ); /* ESCAPE */
      FUNC1( i==5 ); /* EACH */
      FUNC1( i==6 ); /* CHECK */
      FUNC1( i==7 ); /* KEY */
      FUNC1( i==8 ); /* BEFORE */
      FUNC1( i==9 ); /* FOREIGN */
      FUNC1( i==10 ); /* FOR */
      FUNC1( i==11 ); /* IGNORE */
      FUNC1( i==12 ); /* REGEXP */
      FUNC1( i==13 ); /* EXPLAIN */
      FUNC1( i==14 ); /* INSTEAD */
      FUNC1( i==15 ); /* ADD */
      FUNC1( i==16 ); /* DATABASE */
      FUNC1( i==17 ); /* AS */
      FUNC1( i==18 ); /* SELECT */
      FUNC1( i==19 ); /* TABLE */
      FUNC1( i==20 ); /* LEFT */
      FUNC1( i==21 ); /* THEN */
      FUNC1( i==22 ); /* END */
      FUNC1( i==23 ); /* DEFERRABLE */
      FUNC1( i==24 ); /* ELSE */
      FUNC1( i==25 ); /* EXCLUDE */
      FUNC1( i==26 ); /* DELETE */
      FUNC1( i==27 ); /* TEMPORARY */
      FUNC1( i==28 ); /* TEMP */
      FUNC1( i==29 ); /* OR */
      FUNC1( i==30 ); /* CONSTRAINT */
      FUNC1( i==31 ); /* INTERSECT */
      FUNC1( i==32 ); /* TIES */
      FUNC1( i==33 ); /* SAVEPOINT */
      FUNC1( i==34 ); /* INTO */
      FUNC1( i==35 ); /* OFFSET */
      FUNC1( i==36 ); /* OF */
      FUNC1( i==37 ); /* SET */
      FUNC1( i==38 ); /* TRANSACTION */
      FUNC1( i==39 ); /* ACTION */
      FUNC1( i==40 ); /* ON */
      FUNC1( i==41 ); /* NATURAL */
      FUNC1( i==42 ); /* ALTER */
      FUNC1( i==43 ); /* RAISE */
      FUNC1( i==44 ); /* EXCEPT */
      FUNC1( i==45 ); /* TRIGGER */
      FUNC1( i==46 ); /* REFERENCES */
      FUNC1( i==47 ); /* UNIQUE */
      FUNC1( i==48 ); /* QUERY */
      FUNC1( i==49 ); /* WITHOUT */
      FUNC1( i==50 ); /* WITH */
      FUNC1( i==51 ); /* OUTER */
      FUNC1( i==52 ); /* RELEASE */
      FUNC1( i==53 ); /* EXCLUSIVE */
      FUNC1( i==54 ); /* EXISTS */
      FUNC1( i==55 ); /* ATTACH */
      FUNC1( i==56 ); /* HAVING */
      FUNC1( i==57 ); /* GLOB */
      FUNC1( i==58 ); /* BEGIN */
      FUNC1( i==59 ); /* INNER */
      FUNC1( i==60 ); /* RANGE */
      FUNC1( i==61 ); /* BETWEEN */
      FUNC1( i==62 ); /* NOTHING */
      FUNC1( i==63 ); /* GROUPS */
      FUNC1( i==64 ); /* GROUP */
      FUNC1( i==65 ); /* CASCADE */
      FUNC1( i==66 ); /* ASC */
      FUNC1( i==67 ); /* DETACH */
      FUNC1( i==68 ); /* CASE */
      FUNC1( i==69 ); /* COLLATE */
      FUNC1( i==70 ); /* CREATE */
      FUNC1( i==71 ); /* CURRENT_DATE */
      FUNC1( i==72 ); /* IMMEDIATE */
      FUNC1( i==73 ); /* JOIN */
      FUNC1( i==74 ); /* INSERT */
      FUNC1( i==75 ); /* LIKE */
      FUNC1( i==76 ); /* MATCH */
      FUNC1( i==77 ); /* PLAN */
      FUNC1( i==78 ); /* ANALYZE */
      FUNC1( i==79 ); /* PRAGMA */
      FUNC1( i==80 ); /* ABORT */
      FUNC1( i==81 ); /* UPDATE */
      FUNC1( i==82 ); /* VALUES */
      FUNC1( i==83 ); /* VIRTUAL */
      FUNC1( i==84 ); /* LIMIT */
      FUNC1( i==85 ); /* WHEN */
      FUNC1( i==86 ); /* NOTNULL */
      FUNC1( i==87 ); /* NOT */
      FUNC1( i==88 ); /* NO */
      FUNC1( i==89 ); /* NULL */
      FUNC1( i==90 ); /* WHERE */
      FUNC1( i==91 ); /* RECURSIVE */
      FUNC1( i==92 ); /* AFTER */
      FUNC1( i==93 ); /* RENAME */
      FUNC1( i==94 ); /* AND */
      FUNC1( i==95 ); /* DEFAULT */
      FUNC1( i==96 ); /* AUTOINCREMENT */
      FUNC1( i==97 ); /* TO */
      FUNC1( i==98 ); /* IN */
      FUNC1( i==99 ); /* CAST */
      FUNC1( i==100 ); /* COLUMN */
      FUNC1( i==101 ); /* COMMIT */
      FUNC1( i==102 ); /* CONFLICT */
      FUNC1( i==103 ); /* CROSS */
      FUNC1( i==104 ); /* CURRENT_TIMESTAMP */
      FUNC1( i==105 ); /* CURRENT_TIME */
      FUNC1( i==106 ); /* CURRENT */
      FUNC1( i==107 ); /* PARTITION */
      FUNC1( i==108 ); /* DEFERRED */
      FUNC1( i==109 ); /* DISTINCT */
      FUNC1( i==110 ); /* IS */
      FUNC1( i==111 ); /* DROP */
      FUNC1( i==112 ); /* PRECEDING */
      FUNC1( i==113 ); /* FAIL */
      FUNC1( i==114 ); /* FILTER */
      FUNC1( i==115 ); /* REPLACE */
      FUNC1( i==116 ); /* FOLLOWING */
      FUNC1( i==117 ); /* FROM */
      FUNC1( i==118 ); /* FULL */
      FUNC1( i==119 ); /* IF */
      FUNC1( i==120 ); /* ISNULL */
      FUNC1( i==121 ); /* ORDER */
      FUNC1( i==122 ); /* RESTRICT */
      FUNC1( i==123 ); /* OTHERS */
      FUNC1( i==124 ); /* OVER */
      FUNC1( i==125 ); /* RIGHT */
      FUNC1( i==126 ); /* ROLLBACK */
      FUNC1( i==127 ); /* ROWS */
      FUNC1( i==128 ); /* ROW */
      FUNC1( i==129 ); /* UNBOUNDED */
      FUNC1( i==130 ); /* UNION */
      FUNC1( i==131 ); /* USING */
      FUNC1( i==132 ); /* VACUUM */
      FUNC1( i==133 ); /* VIEW */
      FUNC1( i==134 ); /* WINDOW */
      FUNC1( i==135 ); /* DO */
      FUNC1( i==136 ); /* BY */
      FUNC1( i==137 ); /* INITIALLY */
      FUNC1( i==138 ); /* ALL */
      FUNC1( i==139 ); /* PRIMARY */
      *pType = aKWCode[i];
      break;
    }
  }
  return n;
}