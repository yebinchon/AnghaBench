
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ pSelect; } ;
typedef TYPE_4__ Table ;
struct TYPE_13__ {TYPE_6__* pSelect; } ;
struct TYPE_20__ {scalar_t__ op; scalar_t__ iTable; TYPE_1__ x; } ;
struct TYPE_19__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_18__ {int selFlags; scalar_t__ pGroupBy; scalar_t__ pOffset; TYPE_7__* pEList; TYPE_5__* pSrc; scalar_t__ pWhere; scalar_t__ pLimit; scalar_t__ pPrior; } ;
struct TYPE_17__ {int nSrc; TYPE_3__* a; } ;
struct TYPE_15__ {scalar_t__ iCursor; TYPE_4__* pTab; scalar_t__ pSelect; } ;
struct TYPE_14__ {TYPE_8__* pExpr; } ;
typedef TYPE_5__ SrcList ;
typedef TYPE_6__ Select ;
typedef TYPE_7__ ExprList ;
typedef TYPE_8__ Expr ;


 int EP_VarSelect ;
 int EP_xIsSelect ;
 scalar_t__ ExprHasProperty (TYPE_8__*,int ) ;
 scalar_t__ IsVirtual (TYPE_4__*) ;
 int SF_Aggregate ;
 int SF_Distinct ;
 scalar_t__ TK_COLUMN ;
 int assert (int) ;
 int testcase (int) ;

__attribute__((used)) static Select *isCandidateForInOpt(Expr *pX){
  Select *p;
  SrcList *pSrc;
  ExprList *pEList;
  Table *pTab;
  int i;
  if( !ExprHasProperty(pX, EP_xIsSelect) ) return 0;
  if( ExprHasProperty(pX, EP_VarSelect) ) return 0;
  p = pX->x.pSelect;
  if( p->pPrior ) return 0;
  if( p->selFlags & (SF_Distinct|SF_Aggregate) ){
    testcase( (p->selFlags & (SF_Distinct|SF_Aggregate))==SF_Distinct );
    testcase( (p->selFlags & (SF_Distinct|SF_Aggregate))==SF_Aggregate );
    return 0;
  }
  assert( p->pGroupBy==0 );
  if( p->pLimit ) return 0;
  assert( p->pOffset==0 );
  if( p->pWhere ) return 0;
  pSrc = p->pSrc;
  assert( pSrc!=0 );
  if( pSrc->nSrc!=1 ) return 0;
  if( pSrc->a[0].pSelect ) return 0;
  pTab = pSrc->a[0].pTab;
  assert( pTab!=0 );
  assert( pTab->pSelect==0 );
  if( IsVirtual(pTab) ) return 0;
  pEList = p->pEList;
  assert( pEList!=0 );

  for(i=0; i<pEList->nExpr; i++){
    Expr *pRes = pEList->a[i].pExpr;
    if( pRes->op!=TK_COLUMN ) return 0;
    assert( pRes->iTable==pSrc->a[0].iCursor );
  }
  return p;
}
