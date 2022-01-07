
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zMsg ;
typedef int va_list ;
struct TYPE_7__ {int pLogArg; int (* xLog ) (int ,int,int ) ;} ;
struct TYPE_6__ {scalar_t__ useMalloc; } ;
typedef TYPE_1__ StrAccum ;


 int SQLITE_PRINT_BUF_SIZE ;
 TYPE_5__ sqlite3GlobalConfig ;
 int sqlite3StrAccumFinish (TYPE_1__*) ;
 int sqlite3StrAccumInit (TYPE_1__*,char*,int,int ) ;
 int sqlite3VXPrintf (TYPE_1__*,int ,char const*,int ) ;
 int stub1 (int ,int,int ) ;

__attribute__((used)) static void renderLogMsg(int iErrCode, const char *zFormat, va_list ap){
  StrAccum acc;
  char zMsg[SQLITE_PRINT_BUF_SIZE*3];

  sqlite3StrAccumInit(&acc, zMsg, sizeof(zMsg), 0);
  acc.useMalloc = 0;
  sqlite3VXPrintf(&acc, 0, zFormat, ap);
  sqlite3GlobalConfig.xLog(sqlite3GlobalConfig.pLogArg, iErrCode,
                           sqlite3StrAccumFinish(&acc));
}
