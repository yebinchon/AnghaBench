#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {struct TYPE_7__* pNext; } ;
struct TYPE_6__ {int /*<<< orphan*/  pRename; int /*<<< orphan*/  zErrMsg; int /*<<< orphan*/  pNewTrigger; TYPE_2__* pNewIndex; int /*<<< orphan*/  pNewTable; scalar_t__ pVdbe; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ Parse ;
typedef  TYPE_2__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(Parse *pParse){
  sqlite3 *db = pParse->db;
  Index *pIdx;
  if( pParse->pVdbe ){
    FUNC6(pParse->pVdbe);
  }
  FUNC2(db, pParse->pNewTable);
  while( (pIdx = pParse->pNewIndex)!=0 ){
    pParse->pNewIndex = pIdx->pNext;
    FUNC4(db, pIdx);
  }
  FUNC3(db, pParse->pNewTrigger);
  FUNC1(db, pParse->zErrMsg);
  FUNC0(db, pParse->pRename);
  FUNC5(pParse);
}