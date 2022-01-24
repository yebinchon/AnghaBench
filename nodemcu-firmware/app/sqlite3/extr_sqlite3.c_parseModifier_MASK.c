#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  tx ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_13__ {int iJD; double s; int validJD; int tzSet; int validHMS; int D; int M; int Y; int /*<<< orphan*/  validTZ; int /*<<< orphan*/  rawS; int /*<<< orphan*/  m; int /*<<< orphan*/  h; int /*<<< orphan*/  validYMD; } ;
struct TYPE_12__ {int nName; char const* zName; double rLimit; double rXform; int /*<<< orphan*/  eType; } ;
typedef  TYPE_1__ DateTime ;

/* Variables and functions */
 int FUNC0 (TYPE_10__*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 TYPE_10__* aXformType ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,double*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const) ; 
 int /*<<< orphan*/  FUNC10 (char const) ; 
 int FUNC11 (char const*) ; 
 int* sqlite3UpperToLower ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC14(
  sqlite3_context *pCtx,      /* Function context */
  const char *z,              /* The text of the modifier */
  int n,                      /* Length of zMod in bytes */
  DateTime *p                 /* The date/time value to be modified */
){
  int rc = 1;
  double r;
  switch(sqlite3UpperToLower[(u8)z[0]] ){
#ifndef SQLITE_OMIT_LOCALTIME
    case 'l': {
      /*    localtime
      **
      ** Assuming the current time value is UTC (a.k.a. GMT), shift it to
      ** show local time.
      */
      if( FUNC12(z, "localtime")==0 ){
        FUNC2(p);
        p->iJD += FUNC5(p, pCtx, &rc);
        FUNC1(p);
      }
      break;
    }
#endif
    case 'u': {
      /*
      **    unixepoch
      **
      ** Treat the current value of p->s as the number of
      ** seconds since 1970.  Convert to a real julian day number.
      */
      if( FUNC12(z, "unixepoch")==0 && p->rawS ){
        r = p->s*1000.0 + 210866760000000.0;
        if( r>=0.0 && r<464269060800000.0 ){
          FUNC1(p);
          p->iJD = (sqlite3_int64)r;
          p->validJD = 1;
          p->rawS = 0;
          rc = 0;
        }
      }
#ifndef SQLITE_OMIT_LOCALTIME
      else if( FUNC12(z, "utc")==0 ){
        if( p->tzSet==0 ){
          sqlite3_int64 c1;
          FUNC2(p);
          c1 = FUNC5(p, pCtx, &rc);
          if( rc==SQLITE_OK ){
            p->iJD -= c1;
            FUNC1(p);
            p->iJD += c1 - FUNC5(p, pCtx, &rc);
          }
          p->tzSet = 1;
        }else{
          rc = SQLITE_OK;
        }
      }
#endif
      break;
    }
    case 'w': {
      /*
      **    weekday N
      **
      ** Move the date to the same time on the next occurrence of
      ** weekday N where 0==Sunday, 1==Monday, and so forth.  If the
      ** date is already on the appropriate weekday, this is a no-op.
      */
      if( FUNC13(z, "weekday ", 8)==0
               && FUNC8(&z[8], &r, FUNC11(&z[8]), SQLITE_UTF8)
               && (n=(int)r)==r && n>=0 && r<7 ){
        sqlite3_int64 Z;
        FUNC4(p);
        p->validTZ = 0;
        p->validJD = 0;
        FUNC2(p);
        Z = ((p->iJD + 129600000)/86400000) % 7;
        if( Z>n ) Z -= 7;
        p->iJD += (n - Z)*86400000;
        FUNC1(p);
        rc = 0;
      }
      break;
    }
    case 's': {
      /*
      **    start of TTTTT
      **
      ** Move the date backwards to the beginning of the current day,
      ** or month or year.
      */
      if( FUNC13(z, "start of ", 9)!=0 ) break;
      if( !p->validJD && !p->validYMD && !p->validHMS ) break;
      z += 9;
      FUNC3(p);
      p->validHMS = 1;
      p->h = p->m = 0;
      p->s = 0.0;
      p->rawS = 0;
      p->validTZ = 0;
      p->validJD = 0;
      if( FUNC12(z,"month")==0 ){
        p->D = 1;
        rc = 0;
      }else if( FUNC12(z,"year")==0 ){
        p->M = 1;
        p->D = 1;
        rc = 0;
      }else if( FUNC12(z,"day")==0 ){
        rc = 0;
      }
      break;
    }
    case '+':
    case '-':
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9': {
      double rRounder;
      int i;
      for(n=1; z[n] && z[n]!=':' && !FUNC10(z[n]); n++){}
      if( !FUNC8(z, &r, n, SQLITE_UTF8) ){
        rc = 1;
        break;
      }
      if( z[n]==':' ){
        /* A modifier of the form (+|-)HH:MM:SS.FFF adds (or subtracts) the
        ** specified number of hours, minutes, seconds, and fractional seconds
        ** to the time.  The ".FFF" may be omitted.  The ":SS.FFF" may be
        ** omitted.
        */
        const char *z2 = z;
        DateTime tx;
        sqlite3_int64 day;
        if( !FUNC9(*z2) ) z2++;
        FUNC6(&tx, 0, sizeof(tx));
        if( FUNC7(z2, &tx) ) break;
        FUNC2(&tx);
        tx.iJD -= 43200000;
        day = tx.iJD/86400000;
        tx.iJD -= day*86400000;
        if( z[0]=='-' ) tx.iJD = -tx.iJD;
        FUNC2(p);
        FUNC1(p);
        p->iJD += tx.iJD;
        rc = 0;
        break;
      }

      /* If control reaches this point, it means the transformation is
      ** one of the forms like "+NNN days".  */
      z += n;
      while( FUNC10(*z) ) z++;
      n = FUNC11(z);
      if( n>10 || n<3 ) break;
      if( sqlite3UpperToLower[(u8)z[n-1]]=='s' ) n--;
      FUNC2(p);
      rc = 1;
      rRounder = r<0 ? -0.5 : +0.5;
      for(i=0; i<FUNC0(aXformType); i++){
        if( aXformType[i].nName==n
         && FUNC13(aXformType[i].zName, z, n)==0
         && r>-aXformType[i].rLimit && r<aXformType[i].rLimit
        ){
          switch( aXformType[i].eType ){
            case 1: { /* Special processing to add months */
              int x;
              FUNC4(p);
              p->M += (int)r;
              x = p->M>0 ? (p->M-1)/12 : (p->M-12)/12;
              p->Y += x;
              p->M -= x*12;
              p->validJD = 0;
              r -= (int)r;
              break;
            }
            case 2: { /* Special processing to add years */
              int y = (int)r;
              FUNC4(p);
              p->Y += y;
              p->validJD = 0;
              r -= (int)r;
              break;
            }
          }
          FUNC2(p);
          p->iJD += (sqlite3_int64)(r*aXformType[i].rXform + rRounder);
          rc = 0;
          break;
        }
      }
      FUNC1(p);
      break;
    }
    default: {
      break;
    }
  }
  return rc;
}