
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_mutex ;
typedef int sqlite3_int64 ;
struct TYPE_2__ {int * nowValue; int * mxValue; } ;


 int ArraySize (int *) ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_OK ;
 int * sqlite3MallocMutex () ;
 int * sqlite3Pcache1Mutex () ;
 int sqlite3_mutex_enter (int *) ;
 int sqlite3_mutex_leave (int *) ;
 scalar_t__* statMutex ;
 TYPE_1__ wsdStat ;
 int wsdStatInit ;

int sqlite3_status64(
  int op,
  sqlite3_int64 *pCurrent,
  sqlite3_int64 *pHighwater,
  int resetFlag
){
  sqlite3_mutex *pMutex;
  wsdStatInit;
  if( op<0 || op>=ArraySize(wsdStat.nowValue) ){
    return SQLITE_MISUSE_BKPT;
  }



  pMutex = statMutex[op] ? sqlite3Pcache1Mutex() : sqlite3MallocMutex();
  sqlite3_mutex_enter(pMutex);
  *pCurrent = wsdStat.nowValue[op];
  *pHighwater = wsdStat.mxValue[op];
  if( resetFlag ){
    wsdStat.mxValue[op] = wsdStat.nowValue[op];
  }
  sqlite3_mutex_leave(pMutex);
  (void)pMutex;
  return SQLITE_OK;
}
