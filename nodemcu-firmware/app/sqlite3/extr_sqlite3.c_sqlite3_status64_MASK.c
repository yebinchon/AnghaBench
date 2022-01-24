#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_mutex ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_2__ {int /*<<< orphan*/ * nowValue; int /*<<< orphan*/ * mxValue; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__* statMutex ; 
 TYPE_1__ wsdStat ; 
 int /*<<< orphan*/  wsdStatInit ; 

int FUNC5(
  int op,
  sqlite3_int64 *pCurrent,
  sqlite3_int64 *pHighwater,
  int resetFlag
){
  sqlite3_mutex *pMutex;
  wsdStatInit;
  if( op<0 || op>=FUNC0(wsdStat.nowValue) ){
    return SQLITE_MISUSE_BKPT;
  }
#ifdef SQLITE_ENABLE_API_ARMOR
  if( pCurrent==0 || pHighwater==0 ) return SQLITE_MISUSE_BKPT;
#endif
  pMutex = statMutex[op] ? FUNC2() : FUNC1();
  FUNC3(pMutex);
  *pCurrent = wsdStat.nowValue[op];
  *pHighwater = wsdStat.mxValue[op];
  if( resetFlag ){
    wsdStat.mxValue[op] = wsdStat.nowValue[op];
  }
  FUNC4(pMutex);
  (void)pMutex;  /* Prevent warning when SQLITE_THREADSAFE=0 */
  return SQLITE_OK;
}