
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int u16 ;
typedef int sqlite3 ;
struct TYPE_17__ {int eOperator; TYPE_12__* pExpr; } ;
typedef TYPE_3__ WhereTerm ;
struct TYPE_18__ {TYPE_2__* pWInfo; } ;
typedef TYPE_4__ WhereClause ;
struct TYPE_19__ {int op; } ;
struct TYPE_16__ {TYPE_1__* pParse; } ;
struct TYPE_15__ {int * db; } ;
struct TYPE_14__ {scalar_t__ pLeft; scalar_t__ pRight; } ;
typedef int SrcList ;
typedef TYPE_5__ Expr ;


 int TERM_DYNAMIC ;
 int TERM_VIRTUAL ;
 int TK_EQ ;
 int TK_GE ;
 int WO_EQ ;
 int WO_GE ;
 int WO_GT ;
 int WO_LE ;
 int WO_LT ;
 int assert (int) ;
 int exprAnalyze (int *,TYPE_4__*,int) ;
 scalar_t__ sqlite3ExprCompare (int ,scalar_t__,scalar_t__,int) ;
 TYPE_5__* sqlite3ExprDup (int *,TYPE_12__*,int ) ;
 int whereClauseInsert (TYPE_4__*,TYPE_5__*,int) ;

__attribute__((used)) static void whereCombineDisjuncts(
  SrcList *pSrc,
  WhereClause *pWC,
  WhereTerm *pOne,
  WhereTerm *pTwo
){
  u16 eOp = pOne->eOperator | pTwo->eOperator;
  sqlite3 *db;
  Expr *pNew;
  int op;
  int idxNew;

  if( (pOne->eOperator & (WO_EQ|WO_LT|WO_LE|WO_GT|WO_GE))==0 ) return;
  if( (pTwo->eOperator & (WO_EQ|WO_LT|WO_LE|WO_GT|WO_GE))==0 ) return;
  if( (eOp & (WO_EQ|WO_LT|WO_LE))!=eOp
   && (eOp & (WO_EQ|WO_GT|WO_GE))!=eOp ) return;
  assert( pOne->pExpr->pLeft!=0 && pOne->pExpr->pRight!=0 );
  assert( pTwo->pExpr->pLeft!=0 && pTwo->pExpr->pRight!=0 );
  if( sqlite3ExprCompare(0,pOne->pExpr->pLeft, pTwo->pExpr->pLeft, -1) ) return;
  if( sqlite3ExprCompare(0,pOne->pExpr->pRight, pTwo->pExpr->pRight,-1) )return;

  if( (eOp & (eOp-1))!=0 ){
    if( eOp & (WO_LT|WO_LE) ){
      eOp = WO_LE;
    }else{
      assert( eOp & (WO_GT|WO_GE) );
      eOp = WO_GE;
    }
  }
  db = pWC->pWInfo->pParse->db;
  pNew = sqlite3ExprDup(db, pOne->pExpr, 0);
  if( pNew==0 ) return;
  for(op=TK_EQ; eOp!=(WO_EQ<<(op-TK_EQ)); op++){ assert( op<TK_GE ); }
  pNew->op = op;
  idxNew = whereClauseInsert(pWC, pNew, TERM_VIRTUAL|TERM_DYNAMIC);
  exprAnalyze(pSrc, pWC, idxNew);
}
