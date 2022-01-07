
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {size_t nChar; } ;
typedef TYPE_1__ StrAccum ;


 int SQLITE_MISUSE_BKPT ;
 int sqlite3StrAccumInit (TYPE_1__*,int ,char*,int,int ) ;
 int sqlite3_str_vappendf (TYPE_1__*,char const*,int ) ;

char *sqlite3_vsnprintf(int n, char *zBuf, const char *zFormat, va_list ap){
  StrAccum acc;
  if( n<=0 ) return zBuf;







  sqlite3StrAccumInit(&acc, 0, zBuf, n, 0);
  sqlite3_str_vappendf(&acc, zFormat, ap);
  zBuf[acc.nChar] = 0;
  return zBuf;
}
