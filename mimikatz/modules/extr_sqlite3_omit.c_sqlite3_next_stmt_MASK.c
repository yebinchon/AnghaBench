#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; scalar_t__ pVdbe; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_6__ {scalar_t__ pNext; } ;
typedef  TYPE_2__ Vdbe ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_MISUSE_BKPT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

sqlite3_stmt *FUNC3(sqlite3 *pDb, sqlite3_stmt *pStmt){
  sqlite3_stmt *pNext;
#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(pDb) ){
    (void)SQLITE_MISUSE_BKPT;
    return 0;
  }
#endif
  FUNC1(pDb->mutex);
  if( pStmt==0 ){
    pNext = (sqlite3_stmt*)pDb->pVdbe;
  }else{
    pNext = (sqlite3_stmt*)((Vdbe*)pStmt)->pNext;
  }
  FUNC2(pDb->mutex);
  return pNext;
}