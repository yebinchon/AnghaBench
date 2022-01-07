
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_5__ {scalar_t__ useMalloc; } ;
typedef TYPE_1__ StrAccum ;


 char* sqlite3StrAccumFinish (TYPE_1__*) ;
 int sqlite3StrAccumInit (TYPE_1__*,char*,int,int ) ;
 int sqlite3VXPrintf (TYPE_1__*,int ,char const*,int ) ;

char *sqlite3_vsnprintf(int n, char *zBuf, const char *zFormat, va_list ap){
  StrAccum acc;
  if( n<=0 ) return zBuf;
  sqlite3StrAccumInit(&acc, zBuf, n, 0);
  acc.useMalloc = 0;
  sqlite3VXPrintf(&acc, 0, zFormat, ap);
  return sqlite3StrAccumFinish(&acc);
}
