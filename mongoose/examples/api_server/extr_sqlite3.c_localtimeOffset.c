
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; } ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
typedef int sLocal ;
typedef int i64 ;
struct TYPE_5__ {int Y; int M; int D; double s; int iJD; int validYMD; int validHMS; scalar_t__ validTZ; scalar_t__ validJD; scalar_t__ m; scalar_t__ h; scalar_t__ tz; } ;
typedef TYPE_1__ DateTime ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int computeJD (TYPE_1__*) ;
 int computeYMD_HMS (TYPE_1__*) ;
 int memset (struct tm*,int ,int) ;
 scalar_t__ osLocaltime (scalar_t__*,struct tm*) ;
 int sqlite3_result_error (int *,char*,int) ;

__attribute__((used)) static sqlite3_int64 localtimeOffset(
  DateTime *p,
  sqlite3_context *pCtx,
  int *pRc
){
  DateTime x, y;
  time_t t;
  struct tm sLocal;


  memset(&sLocal, 0, sizeof(sLocal));

  x = *p;
  computeYMD_HMS(&x);
  if( x.Y<1971 || x.Y>=2038 ){
    x.Y = 2000;
    x.M = 1;
    x.D = 1;
    x.h = 0;
    x.m = 0;
    x.s = 0.0;
  } else {
    int s = (int)(x.s + 0.5);
    x.s = s;
  }
  x.tz = 0;
  x.validJD = 0;
  computeJD(&x);
  t = (time_t)(x.iJD/1000 - 21086676*(i64)10000);
  if( osLocaltime(&t, &sLocal) ){
    sqlite3_result_error(pCtx, "local time unavailable", -1);
    *pRc = SQLITE_ERROR;
    return 0;
  }
  y.Y = sLocal.tm_year + 1900;
  y.M = sLocal.tm_mon + 1;
  y.D = sLocal.tm_mday;
  y.h = sLocal.tm_hour;
  y.m = sLocal.tm_min;
  y.s = sLocal.tm_sec;
  y.validYMD = 1;
  y.validHMS = 1;
  y.validJD = 0;
  y.validTZ = 0;
  computeJD(&y);
  *pRc = SQLITE_OK;
  return y.iJD - x.iJD;
}
