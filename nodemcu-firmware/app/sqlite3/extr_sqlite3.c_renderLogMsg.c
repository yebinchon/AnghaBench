
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zMsg ;
typedef int va_list ;
struct TYPE_2__ {int pLogArg; int (* xLog ) (int ,int,int ) ;} ;
typedef int StrAccum ;


 int SQLITE_PRINT_BUF_SIZE ;
 TYPE_1__ sqlite3GlobalConfig ;
 int sqlite3StrAccumFinish (int *) ;
 int sqlite3StrAccumInit (int *,int ,char*,int,int ) ;
 int sqlite3VXPrintf (int *,char const*,int ) ;
 int stub1 (int ,int,int ) ;

__attribute__((used)) static void renderLogMsg(int iErrCode, const char *zFormat, va_list ap){
  StrAccum acc;
  char zMsg[SQLITE_PRINT_BUF_SIZE*3];

  sqlite3StrAccumInit(&acc, 0, zMsg, sizeof(zMsg), 0);
  sqlite3VXPrintf(&acc, zFormat, ap);
  sqlite3GlobalConfig.xLog(sqlite3GlobalConfig.pLogArg, iErrCode,
                           sqlite3StrAccumFinish(&acc));
}
