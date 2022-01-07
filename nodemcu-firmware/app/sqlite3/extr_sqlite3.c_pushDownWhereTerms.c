
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ op; struct TYPE_19__* pLeft; struct TYPE_19__* pRight; } ;
struct TYPE_18__ {int db; } ;
struct TYPE_17__ {int selFlags; scalar_t__ pLimit; struct TYPE_17__* pPrior; int pWhere; int pEList; } ;
struct TYPE_16__ {int iTable; int iNewTable; int pEList; scalar_t__ isLeftJoin; TYPE_3__* pParse; } ;
typedef TYPE_1__ SubstContext ;
typedef TYPE_2__ Select ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ Expr ;


 int EP_FromJoin ;
 scalar_t__ ExprHasProperty (TYPE_4__*,int ) ;
 int SF_Aggregate ;
 int SF_Recursive ;
 scalar_t__ TK_AND ;
 int sqlite3ExprAnd (int ,int ,TYPE_4__*) ;
 TYPE_4__* sqlite3ExprDup (int ,TYPE_4__*,int ) ;
 scalar_t__ sqlite3ExprIsTableConstant (TYPE_4__*,int) ;
 TYPE_4__* substExpr (TYPE_1__*,TYPE_4__*) ;
 int testcase (int) ;

__attribute__((used)) static int pushDownWhereTerms(
  Parse *pParse,
  Select *pSubq,
  Expr *pWhere,
  int iCursor
){
  Expr *pNew;
  int nChng = 0;
  Select *pX;
  if( pWhere==0 ) return 0;
  for(pX=pSubq; pX; pX=pX->pPrior){
    if( (pX->selFlags & (SF_Aggregate|SF_Recursive))!=0 ){
      testcase( pX->selFlags & SF_Aggregate );
      testcase( pX->selFlags & SF_Recursive );
      testcase( pX!=pSubq );
      return 0;
    }
  }
  if( pSubq->pLimit!=0 ){
    return 0;
  }
  while( pWhere->op==TK_AND ){
    nChng += pushDownWhereTerms(pParse, pSubq, pWhere->pRight, iCursor);
    pWhere = pWhere->pLeft;
  }
  if( ExprHasProperty(pWhere,EP_FromJoin) ) return 0;
  if( sqlite3ExprIsTableConstant(pWhere, iCursor) ){
    nChng++;
    while( pSubq ){
      SubstContext x;
      pNew = sqlite3ExprDup(pParse->db, pWhere, 0);
      x.pParse = pParse;
      x.iTable = iCursor;
      x.iNewTable = iCursor;
      x.isLeftJoin = 0;
      x.pEList = pSubq->pEList;
      pNew = substExpr(&x, pNew);
      pSubq->pWhere = sqlite3ExprAnd(pParse->db, pSubq->pWhere, pNew);
      pSubq = pSubq->pPrior;
    }
  }
  return nChng;
}
