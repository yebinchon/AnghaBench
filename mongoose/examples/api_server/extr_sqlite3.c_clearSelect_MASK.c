#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_3__ {int /*<<< orphan*/  pOffset; int /*<<< orphan*/  pLimit; int /*<<< orphan*/  pPrior; int /*<<< orphan*/  pOrderBy; int /*<<< orphan*/  pHaving; int /*<<< orphan*/  pGroupBy; int /*<<< orphan*/  pWhere; int /*<<< orphan*/  pSrc; int /*<<< orphan*/  pEList; } ;
typedef  TYPE_1__ Select ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(sqlite3 *db, Select *p){
  FUNC1(db, p->pEList);
  FUNC3(db, p->pSrc);
  FUNC0(db, p->pWhere);
  FUNC1(db, p->pGroupBy);
  FUNC0(db, p->pHaving);
  FUNC1(db, p->pOrderBy);
  FUNC2(db, p->pPrior);
  FUNC0(db, p->pLimit);
  FUNC0(db, p->pOffset);
}