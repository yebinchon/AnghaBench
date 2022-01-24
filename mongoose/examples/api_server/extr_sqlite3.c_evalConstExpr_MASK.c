#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct ExprList_item {TYPE_12__* pExpr; } ;
struct TYPE_15__ {TYPE_3__* pParse; } ;
typedef  TYPE_2__ Walker ;
struct TYPE_14__ {TYPE_4__* pList; } ;
struct TYPE_18__ {int op; int op2; int iTable; TYPE_1__ x; } ;
struct TYPE_17__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_16__ {int nMem; } ;
struct TYPE_13__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ ExprList ;
typedef  TYPE_5__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_12__*) ; 
 int /*<<< orphan*/  EP_FixedDest ; 
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
#define  TK_AGG_FUNCTION 133 
#define  TK_COLLATE 132 
#define  TK_CONST_FUNC 131 
#define  TK_FUNCTION 130 
#define  TK_IN 129 
#define  TK_REGISTER 128 
 int WRC_Continue ; 
 int WRC_Prune ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_3__*,TYPE_5__*,int) ; 

__attribute__((used)) static int FUNC5(Walker *pWalker, Expr *pExpr){
  Parse *pParse = pWalker->pParse;
  switch( pExpr->op ){
    case TK_IN:
    case TK_REGISTER: {
      return WRC_Prune;
    }
    case TK_COLLATE: {
      return WRC_Continue;
    }
    case TK_FUNCTION:
    case TK_AGG_FUNCTION:
    case TK_CONST_FUNC: {
      /* The arguments to a function have a fixed destination.
      ** Mark them this way to avoid generated unneeded OP_SCopy
      ** instructions. 
      */
      ExprList *pList = pExpr->x.pList;
      FUNC2( !FUNC1(pExpr, EP_xIsSelect) );
      if( pList ){
        int i = pList->nExpr;
        struct ExprList_item *pItem = pList->a;
        for(; i>0; i--, pItem++){
          if( FUNC0(pItem->pExpr) ) pItem->pExpr->flags |= EP_FixedDest;
        }
      }
      break;
    }
  }
  if( FUNC3(pExpr) ){
    int r1 = ++pParse->nMem;
    int r2 = FUNC4(pParse, pExpr, r1);
    /* If r2!=r1, it means that register r1 is never used.  That is harmless
    ** but suboptimal, so we want to know about the situation to fix it.
    ** Hence the following assert: */
    FUNC2( r2==r1 );
    pExpr->op2 = pExpr->op;
    pExpr->op = TK_REGISTER;
    pExpr->iTable = r2;
    return WRC_Prune;
  }
  return WRC_Continue;
}