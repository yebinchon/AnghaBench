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
struct SrcList_item {TYPE_2__* pSelect; } ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {TYPE_1__* pSrc; struct TYPE_7__* pPrior; void* pWhere; void* pHaving; int /*<<< orphan*/  pOrderBy; int /*<<< orphan*/  pGroupBy; int /*<<< orphan*/  pEList; } ;
struct TYPE_6__ {int nSrc; struct SrcList_item* a; } ;
typedef  TYPE_1__ SrcList ;
typedef  TYPE_2__ Select ;
typedef  int /*<<< orphan*/  ExprList ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(
  sqlite3 *db,         /* Report malloc errors here */
  Select *p,           /* SELECT statement in which to make substitutions */
  int iTable,          /* Table to be replaced */
  ExprList *pEList     /* Substitute values */
){
  SrcList *pSrc;
  struct SrcList_item *pItem;
  int i;
  if( !p ) return;
  FUNC3(db, p->pEList, iTable, pEList);
  FUNC3(db, p->pGroupBy, iTable, pEList);
  FUNC3(db, p->pOrderBy, iTable, pEList);
  p->pHaving = FUNC2(db, p->pHaving, iTable, pEList);
  p->pWhere = FUNC2(db, p->pWhere, iTable, pEList);
  FUNC4(db, p->pPrior, iTable, pEList);
  pSrc = p->pSrc;
  FUNC1( pSrc );  /* Even for (SELECT 1) we have: pSrc!=0 but pSrc->nSrc==0 */
  if( FUNC0(pSrc) ){
    for(i=pSrc->nSrc, pItem=pSrc->a; i>0; i--, pItem++){
      FUNC4(db, pItem->pSelect, iTable, pEList);
    }
  }
}