#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  ifNullRow ;
struct TYPE_22__ {int /*<<< orphan*/  pList; int /*<<< orphan*/  pSelect; } ;
struct TYPE_24__ {scalar_t__ iRightJoinTable; scalar_t__ op; scalar_t__ iTable; size_t iColumn; int flags; TYPE_3__ x; struct TYPE_24__* pRight; struct TYPE_24__* pLeft; } ;
struct TYPE_23__ {scalar_t__ iTable; scalar_t__ iNewTable; scalar_t__ isLeftJoin; TYPE_11__* pParse; TYPE_2__* pEList; } ;
struct TYPE_21__ {size_t nExpr; TYPE_1__* a; } ;
struct TYPE_20__ {TYPE_5__* pExpr; } ;
struct TYPE_19__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_4__ SubstContext ;
typedef  TYPE_5__ Expr ;

/* Variables and functions */
 int EP_FromJoin ; 
 int EP_xIsSelect ; 
 scalar_t__ FUNC0 (TYPE_5__*,int) ; 
 scalar_t__ TK_COLUMN ; 
 scalar_t__ TK_IF_NULL_ROW ; 
 scalar_t__ TK_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_11__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Expr *FUNC9(
  SubstContext *pSubst,  /* Description of the substitution */
  Expr *pExpr            /* Expr in which substitution occurs */
){
  if( pExpr==0 ) return 0;
  if( FUNC0(pExpr, EP_FromJoin) && pExpr->iRightJoinTable==pSubst->iTable ){
    pExpr->iRightJoinTable = pSubst->iNewTable;
  }
  if( pExpr->op==TK_COLUMN && pExpr->iTable==pSubst->iTable ){
    if( pExpr->iColumn<0 ){
      pExpr->op = TK_NULL;
    }else{
      Expr *pNew;
      Expr *pCopy = pSubst->pEList->a[pExpr->iColumn].pExpr;
      Expr ifNullRow;
      FUNC1( pSubst->pEList!=0 && pExpr->iColumn<pSubst->pEList->nExpr );
      FUNC1( pExpr->pLeft==0 && pExpr->pRight==0 );
      if( FUNC5(pCopy) ){
        FUNC6(pSubst->pParse, pCopy);
      }else{
        sqlite3 *db = pSubst->pParse->db;
        if( pSubst->isLeftJoin && pCopy->op!=TK_COLUMN ){
          FUNC2(&ifNullRow, 0, sizeof(ifNullRow));
          ifNullRow.op = TK_IF_NULL_ROW;
          ifNullRow.pLeft = pCopy;
          ifNullRow.iTable = pSubst->iNewTable;
          pCopy = &ifNullRow;
        }
        pNew = FUNC4(db, pCopy, 0);
        if( pNew && (pExpr->flags & EP_FromJoin) ){
          pNew->iRightJoinTable = pExpr->iRightJoinTable;
          pNew->flags |= EP_FromJoin;
        }
        FUNC3(db, pExpr);
        pExpr = pNew;
      }
    }
  }else{
    if( pExpr->op==TK_IF_NULL_ROW && pExpr->iTable==pSubst->iTable ){
      pExpr->iTable = pSubst->iNewTable;
    }
    pExpr->pLeft = FUNC9(pSubst, pExpr->pLeft);
    pExpr->pRight = FUNC9(pSubst, pExpr->pRight);
    if( FUNC0(pExpr, EP_xIsSelect) ){
      FUNC8(pSubst, pExpr->x.pSelect, 1);
    }else{
      FUNC7(pSubst, pExpr->x.pList);
    }
  }
  return pExpr;
}