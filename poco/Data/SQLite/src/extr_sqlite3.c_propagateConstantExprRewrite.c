
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int nConst; TYPE_5__** apExpr; TYPE_2__* pParse; int nChng; } ;
typedef TYPE_3__ WhereConst ;
struct TYPE_12__ {TYPE_3__* pConst; } ;
struct TYPE_15__ {TYPE_1__ u; } ;
typedef TYPE_4__ Walker ;
struct TYPE_16__ {scalar_t__ op; scalar_t__ iTable; scalar_t__ iColumn; int pLeft; } ;
struct TYPE_13__ {int db; } ;
typedef TYPE_5__ Expr ;


 int EP_FixedCol ;
 int EP_Leaf ;
 int ExprClearProperty (TYPE_5__*,int ) ;
 scalar_t__ ExprHasProperty (TYPE_5__*,int ) ;
 int ExprSetProperty (TYPE_5__*,int ) ;
 scalar_t__ TK_COLUMN ;
 int WRC_Continue ;
 int WRC_Prune ;
 int assert (int) ;
 int sqlite3ExprDup (int ,TYPE_5__*,int ) ;

__attribute__((used)) static int propagateConstantExprRewrite(Walker *pWalker, Expr *pExpr){
  int i;
  WhereConst *pConst;
  if( pExpr->op!=TK_COLUMN ) return WRC_Continue;
  if( ExprHasProperty(pExpr, EP_FixedCol) ) return WRC_Continue;
  pConst = pWalker->u.pConst;
  for(i=0; i<pConst->nConst; i++){
    Expr *pColumn = pConst->apExpr[i*2];
    if( pColumn==pExpr ) continue;
    if( pColumn->iTable!=pExpr->iTable ) continue;
    if( pColumn->iColumn!=pExpr->iColumn ) continue;

    pConst->nChng++;
    ExprClearProperty(pExpr, EP_Leaf);
    ExprSetProperty(pExpr, EP_FixedCol);
    assert( pExpr->pLeft==0 );
    pExpr->pLeft = sqlite3ExprDup(pConst->pParse->db, pConst->apExpr[i*2+1], 0);
    break;
  }
  return WRC_Prune;
}
