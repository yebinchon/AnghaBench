
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3_context ;
struct TYPE_6__ {int validJD; scalar_t__ iJD; } ;
typedef TYPE_1__ DateTime ;


 int SQLITE_UTF8 ;
 scalar_t__ parseHhMmSs (char const*,TYPE_1__*) ;
 scalar_t__ parseYyyyMmDd (char const*,TYPE_1__*) ;
 int setDateTimeToCurrent (int *,TYPE_1__*) ;
 scalar_t__ sqlite3AtoF (char const*,double*,int ,int ) ;
 scalar_t__ sqlite3StrICmp (char const*,char*) ;
 int sqlite3Strlen30 (char const*) ;

__attribute__((used)) static int parseDateOrTime(
  sqlite3_context *context,
  const char *zDate,
  DateTime *p
){
  double r;
  if( parseYyyyMmDd(zDate,p)==0 ){
    return 0;
  }else if( parseHhMmSs(zDate, p)==0 ){
    return 0;
  }else if( sqlite3StrICmp(zDate,"now")==0){
    return setDateTimeToCurrent(context, p);
  }else if( sqlite3AtoF(zDate, &r, sqlite3Strlen30(zDate), SQLITE_UTF8) ){
    p->iJD = (sqlite3_int64)(r*86400000.0 + 0.5);
    p->validJD = 1;
    return 0;
  }
  return 1;
}
