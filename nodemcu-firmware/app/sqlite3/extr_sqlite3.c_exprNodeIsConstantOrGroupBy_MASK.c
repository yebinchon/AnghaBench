#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* pGroupBy; } ;
struct TYPE_11__ {scalar_t__ eCode; int /*<<< orphan*/  pParse; TYPE_2__ u; } ;
typedef  TYPE_3__ Walker ;
struct TYPE_13__ {int /*<<< orphan*/  zName; } ;
struct TYPE_12__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pExpr; } ;
typedef  TYPE_4__ ExprList ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_5__ CollSeq ;

/* Variables and functions */
 int /*<<< orphan*/  EP_xIsSelect ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int WRC_Abort ; 
 int WRC_Prune ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Walker *pWalker, Expr *pExpr){
  ExprList *pGroupBy = pWalker->u.pGroupBy;
  int i;

  /* Check if pExpr is identical to any GROUP BY term. If so, consider
  ** it constant.  */
  for(i=0; i<pGroupBy->nExpr; i++){
    Expr *p = pGroupBy->a[i].pExpr;
    if( FUNC3(pExpr, p, -1)<2 ){
      CollSeq *pColl = FUNC2(pWalker->pParse, p);
      if( pColl==0 || FUNC4("BINARY", pColl->zName)==0 ){
        return WRC_Prune;
      }
    }
  }

  /* Check if pExpr is a sub-select. If so, consider it variable. */
  if( FUNC0(pExpr, EP_xIsSelect) ){
    pWalker->eCode = 0;
    return WRC_Abort;
  }

  return FUNC1(pWalker, pExpr);
}