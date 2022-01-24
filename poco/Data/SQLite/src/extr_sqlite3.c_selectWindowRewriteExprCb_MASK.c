#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct WindowRewrite {int /*<<< orphan*/  pTab; TYPE_5__* pWin; TYPE_9__* pSub; TYPE_3__* pSrc; scalar_t__ pSubSelect; } ;
struct TYPE_26__ {scalar_t__ iEphCsr; TYPE_8__* pOwner; struct TYPE_26__* pNextWin; } ;
typedef  TYPE_5__ Window ;
struct TYPE_22__ {struct WindowRewrite* pRewrite; } ;
struct TYPE_27__ {TYPE_7__* pParse; TYPE_1__ u; } ;
typedef  TYPE_6__ Walker ;
struct TYPE_30__ {int /*<<< orphan*/  nExpr; } ;
struct TYPE_25__ {int /*<<< orphan*/  pTab; TYPE_5__* pWin; } ;
struct TYPE_29__ {int op; scalar_t__ iTable; TYPE_4__ y; int /*<<< orphan*/  iColumn; } ;
struct TYPE_28__ {int /*<<< orphan*/  db; } ;
struct TYPE_24__ {int nSrc; TYPE_2__* a; } ;
struct TYPE_23__ {scalar_t__ iCursor; } ;
typedef  TYPE_7__ Parse ;
typedef  TYPE_8__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_Static ; 
 int /*<<< orphan*/  EP_WinFunc ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ) ; 
#define  TK_AGG_FUNCTION 130 
#define  TK_COLUMN 129 
#define  TK_FUNCTION 128 
 int WRC_Continue ; 
 int WRC_Prune ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 TYPE_8__* FUNC6 (int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC7 (TYPE_7__*,TYPE_9__*,TYPE_8__*) ; 

__attribute__((used)) static int FUNC8(Walker *pWalker, Expr *pExpr){
  struct WindowRewrite *p = pWalker->u.pRewrite;
  Parse *pParse = pWalker->pParse;

  /* If this function is being called from within a scalar sub-select
  ** that used by the SELECT statement being processed, only process
  ** TK_COLUMN expressions that refer to it (the outer SELECT). Do
  ** not process aggregates or window functions at all, as they belong
  ** to the scalar sub-select.  */
  if( p->pSubSelect ){
    if( pExpr->op!=TK_COLUMN ){
      return WRC_Continue;
    }else{
      int nSrc = p->pSrc->nSrc;
      int i;
      for(i=0; i<nSrc; i++){
        if( pExpr->iTable==p->pSrc->a[i].iCursor ) break;
      }
      if( i==nSrc ) return WRC_Continue;
    }
  }

  switch( pExpr->op ){

    case TK_FUNCTION:
      if( !FUNC1(pExpr, EP_WinFunc) ){
        break;
      }else{
        Window *pWin;
        for(pWin=p->pWin; pWin; pWin=pWin->pNextWin){
          if( pExpr->y.pWin==pWin ){
            FUNC3( pWin->pOwner==pExpr );
            return WRC_Prune;
          }
        }
      }
      /* Fall through.  */

    case TK_AGG_FUNCTION:
    case TK_COLUMN: {
      Expr *pDup = FUNC6(pParse->db, pExpr, 0);
      p->pSub = FUNC7(pParse, p->pSub, pDup);
      if( p->pSub ){
        FUNC3( FUNC1(pExpr, EP_Static)==0 );
        FUNC2(pExpr, EP_Static);
        FUNC5(pParse->db, pExpr);
        FUNC0(pExpr, EP_Static);
        FUNC4(pExpr, 0, sizeof(Expr));

        pExpr->op = TK_COLUMN;
        pExpr->iColumn = p->pSub->nExpr-1;
        pExpr->iTable = p->pWin->iEphCsr;
        pExpr->y.pTab = p->pTab;
      }

      break;
    }

    default: /* no-op */
      break;
  }

  return WRC_Continue;
}