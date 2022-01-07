
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int sqlite3 ;
typedef scalar_t__ i16 ;
struct TYPE_24__ {scalar_t__ iTable; scalar_t__ iRightJoinTable; } ;
struct TYPE_23__ {int * db; } ;
struct TYPE_22__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_21__ {int pTab; } ;
typedef TYPE_2__ SrcList ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ Expr ;


 int EP_FromJoin ;
 int EP_NoReduce ;
 int EP_Reduced ;
 int EP_TokenOnly ;
 int ExprHasProperty (TYPE_4__*,int) ;
 int ExprSetProperty (TYPE_4__*,int ) ;
 int ExprSetVVAProperty (TYPE_4__*,int ) ;
 int TK_EQ ;
 int assert (int) ;
 TYPE_4__* sqlite3CreateColumnExpr (int *,TYPE_2__*,int,int) ;
 TYPE_4__* sqlite3ExprAnd (TYPE_3__*,TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* sqlite3PExpr (TYPE_3__*,int ,TYPE_4__*,TYPE_4__*) ;

__attribute__((used)) static void addWhereTerm(
  Parse *pParse,
  SrcList *pSrc,
  int iLeft,
  int iColLeft,
  int iRight,
  int iColRight,
  int isOuterJoin,
  Expr **ppWhere
){
  sqlite3 *db = pParse->db;
  Expr *pE1;
  Expr *pE2;
  Expr *pEq;

  assert( iLeft<iRight );
  assert( pSrc->nSrc>iRight );
  assert( pSrc->a[iLeft].pTab );
  assert( pSrc->a[iRight].pTab );

  pE1 = sqlite3CreateColumnExpr(db, pSrc, iLeft, iColLeft);
  pE2 = sqlite3CreateColumnExpr(db, pSrc, iRight, iColRight);

  pEq = sqlite3PExpr(pParse, TK_EQ, pE1, pE2);
  if( pEq && isOuterJoin ){
    ExprSetProperty(pEq, EP_FromJoin);
    assert( !ExprHasProperty(pEq, EP_TokenOnly|EP_Reduced) );
    ExprSetVVAProperty(pEq, EP_NoReduce);
    pEq->iRightJoinTable = (i16)pE2->iTable;
  }
  *ppWhere = sqlite3ExprAnd(pParse, *ppWhere, pEq);
}
