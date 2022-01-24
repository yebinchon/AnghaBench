#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {scalar_t__ pWith; int /*<<< orphan*/  pOffset; int /*<<< orphan*/  pLimit; int /*<<< orphan*/  pOrderBy; int /*<<< orphan*/  pHaving; int /*<<< orphan*/  pGroupBy; int /*<<< orphan*/  pWhere; int /*<<< orphan*/  pSrc; int /*<<< orphan*/  pEList; struct TYPE_4__* pPrior; } ;
typedef  TYPE_1__ Select ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC5(sqlite3 *db, Select *p, int bFree){
  while( p ){
    Select *pPrior = p->pPrior;
    FUNC2(db, p->pEList);
    FUNC3(db, p->pSrc);
    FUNC1(db, p->pWhere);
    FUNC2(db, p->pGroupBy);
    FUNC1(db, p->pHaving);
    FUNC2(db, p->pOrderBy);
    FUNC1(db, p->pLimit);
    FUNC1(db, p->pOffset);
    if( p->pWith ) FUNC4(db, p->pWith);
    if( bFree ) FUNC0(db, p);
    p = pPrior;
    bFree = 1;
  }
}