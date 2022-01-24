#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nDb; int /*<<< orphan*/  mutex; TYPE_1__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_7__ {int /*<<< orphan*/ * pBt; } ;
typedef  int /*<<< orphan*/  Pager ;
typedef  int /*<<< orphan*/  Btree ;

/* Variables and functions */
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(sqlite3 *db){
  int i;

#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) ) return SQLITE_MISUSE_BKPT;
#endif
  FUNC5(db->mutex);
  FUNC0(db);
  for(i=0; i<db->nDb; i++){
    Btree *pBt = db->aDb[i].pBt;
    if( pBt ){
      Pager *pPager = FUNC2(pBt);
      FUNC3(pPager);
    }
  }
  FUNC1(db);
  FUNC6(db->mutex);
  return SQLITE_OK;
}