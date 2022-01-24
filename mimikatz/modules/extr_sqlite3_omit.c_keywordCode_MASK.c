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
      FUNC1( i==26 ); /* WITH */
      FUNC1( i==27 ); /* OUTER */
      FUNC1( i==28 ); /* RELEASE */
      FUNC1( i==29 ); /* AS */
      FUNC1( i==30 ); /* EXCLUSIVE */
      FUNC1( i==31 ); /* EXISTS */
      FUNC1( i==32 ); /* BEGIN */
      FUNC1( i==33 ); /* INDEXED */
      FUNC1( i==34 ); /* INDEX */
      FUNC1( i==35 ); /* DELETE */
      FUNC1( i==36 ); /* BETWEEN */
      FUNC1( i==37 ); /* NOTHING */
      FUNC1( i==38 ); /* GROUP */
      FUNC1( i==39 ); /* UPDATE */
      FUNC1( i==40 ); /* CASE */
      FUNC1( i==41 ); /* COLLATE */
      FUNC1( i==42 ); /* CREATE */
      FUNC1( i==43 ); /* CURRENT_DATE */
      FUNC1( i==44 ); /* IGNORE */
      FUNC1( i==45 ); /* RECURSIVE */
      FUNC1( i==46 ); /* IMMEDIATE */
      FUNC1( i==47 ); /* JOIN */
      FUNC1( i==48 ); /* INNER */
      FUNC1( i==49 ); /* RANGE */
      FUNC1( i==50 ); /* MATCH */
      FUNC1( i==51 ); /* CHECK */
      FUNC1( i==52 ); /* VALUES */
      FUNC1( i==53 ); /* WHEN */
      FUNC1( i==54 ); /* NOTNULL */
      FUNC1( i==55 ); /* NOT */
      FUNC1( i==56 ); /* NULL */
      FUNC1( i==57 ); /* LIMIT */
      FUNC1( i==58 ); /* WHERE */
      FUNC1( i==59 ); /* REGEXP */
      FUNC1( i==60 ); /* PARTITION */
      FUNC1( i==61 ); /* ABORT */
      FUNC1( i==62 ); /* ADD */
      FUNC1( i==63 ); /* DEFAULT */
      FUNC1( i==64 ); /* ALTER */
      FUNC1( i==65 ); /* RENAME */
      FUNC1( i==66 ); /* AND */
      FUNC1( i==67 ); /* DEFERRED */
      FUNC1( i==68 ); /* DISTINCT */
      FUNC1( i==69 ); /* IS */
      FUNC1( i==70 ); /* ASC */
      FUNC1( i==71 ); /* COLUMN */
      FUNC1( i==72 ); /* COMMIT */
      FUNC1( i==73 ); /* CONFLICT */
      FUNC1( i==74 ); /* CROSS */
      FUNC1( i==75 ); /* CURRENT_TIMESTAMP */
      FUNC1( i==76 ); /* CURRENT_TIME */
      FUNC1( i==77 ); /* CURRENT */
      FUNC1( i==78 ); /* PRECEDING */
      FUNC1( i==79 ); /* GLOB */
      FUNC1( i==80 ); /* BY */
      FUNC1( i==81 ); /* DROP */
      FUNC1( i==82 ); /* PRIMARY */
      FUNC1( i==83 ); /* FAIL */
      FUNC1( i==84 ); /* FILTER */
      FUNC1( i==85 ); /* REPLACE */
      FUNC1( i==86 ); /* FOLLOWING */
      FUNC1( i==87 ); /* FROM */
      FUNC1( i==88 ); /* FULL */
      FUNC1( i==89 ); /* HAVING */
      FUNC1( i==90 ); /* IF */
      FUNC1( i==91 ); /* INSERT */
      FUNC1( i==92 ); /* ISNULL */
      FUNC1( i==93 ); /* ORDER */
      FUNC1( i==94 ); /* RIGHT */
      FUNC1( i==95 ); /* OVER */
      FUNC1( i==96 ); /* ROLLBACK */
      FUNC1( i==97 ); /* ROWS */
      FUNC1( i==98 ); /* UNBOUNDED */
      FUNC1( i==99 ); /* UNIQUE */
      FUNC1( i==100 ); /* USING */
      FUNC1( i==101 ); /* VIEW */
      FUNC1( i==102 ); /* WINDOW */
      FUNC1( i==103 ); /* DO */
      *pType = aKWCode[i];
      break;
    }
  }
  return n;
}