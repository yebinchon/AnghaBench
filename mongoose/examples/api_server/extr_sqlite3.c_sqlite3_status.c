
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* nowValue; int* mxValue; } ;


 int ArraySize (int*) ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 TYPE_1__ wsdStat ;
 int wsdStatInit ;

int sqlite3_status(int op, int *pCurrent, int *pHighwater, int resetFlag){
  wsdStatInit;
  if( op<0 || op>=ArraySize(wsdStat.nowValue) ){
    return SQLITE_MISUSE_BKPT;
  }
  *pCurrent = wsdStat.nowValue[op];
  *pHighwater = wsdStat.mxValue[op];
  if( resetFlag ){
    wsdStat.mxValue[op] = wsdStat.nowValue[op];
  }
  return SQLITE_OK;
}
