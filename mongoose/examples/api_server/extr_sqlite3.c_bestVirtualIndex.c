
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_22__ {TYPE_5__* pVtabIdx; } ;
struct TYPE_23__ {int nOBSat; scalar_t__ nEq; int wsFlags; TYPE_3__ u; } ;
struct sqlite3_index_constraint_usage {scalar_t__ argvIndex; int used; scalar_t__ omit; double rCost; TYPE_4__ plan; } ;
struct sqlite3_index_constraint {int iTermOffset; int usable; } ;
struct SrcList_item {TYPE_9__* pTab; } ;
struct TYPE_24__ {int nConstraint; scalar_t__ orderByConsumed; double estimatedCost; int nOrderBy; int aConstraint; scalar_t__ needToFreeIdxStr; scalar_t__ idxNum; scalar_t__ idxStr; struct sqlite3_index_constraint_usage* aConstraintUsage; } ;
typedef TYPE_5__ sqlite3_index_info ;
typedef int pUsage ;
struct TYPE_25__ {int prereqRight; int eOperator; } ;
typedef TYPE_6__ WhereTerm ;
struct TYPE_26__ {TYPE_6__* a; } ;
typedef TYPE_7__ WhereClause ;
struct TYPE_27__ {int notReady; int i; struct sqlite3_index_constraint_usage cost; TYPE_2__* aLevel; scalar_t__ pOrderBy; TYPE_5__** ppIdxInfo; struct SrcList_item* pSrc; TYPE_7__* pWC; TYPE_10__* pParse; } ;
typedef TYPE_8__ WhereBestIdx ;
struct TYPE_28__ {scalar_t__* azModuleArg; } ;
typedef TYPE_9__ Table ;
struct TYPE_20__ {int wsFlags; int nOBSat; } ;
struct TYPE_21__ {TYPE_1__ plan; } ;
struct TYPE_19__ {int db; } ;
typedef TYPE_10__ Parse ;


 double SQLITE_BIG_DBL ;
 int WHERE_ORDERED ;
 int WHERE_UNIQUE ;
 int WHERE_VIRTUALTABLE ;
 int WO_IN ;
 TYPE_5__* allocateIndexInfo (TYPE_8__*) ;
 int assert (int) ;
 int bestOrClauseIndex (TYPE_8__*) ;
 double estLog (double) ;
 int memset (struct sqlite3_index_constraint_usage*,int ,int) ;
 int sqlite3GetVTable (int ,TYPE_9__*) ;
 int sqlite3_free (scalar_t__) ;
 scalar_t__ vtabBestIndex (TYPE_10__*,TYPE_9__*,TYPE_5__*) ;

__attribute__((used)) static void bestVirtualIndex(WhereBestIdx *p){
  Parse *pParse = p->pParse;
  WhereClause *pWC = p->pWC;
  struct SrcList_item *pSrc = p->pSrc;
  Table *pTab = pSrc->pTab;
  sqlite3_index_info *pIdxInfo;
  struct sqlite3_index_constraint *pIdxCons;
  struct sqlite3_index_constraint_usage *pUsage;
  WhereTerm *pTerm;
  int i, j;
  int nOrderBy;
  int bAllowIN;
  double rCost;





  memset(&p->cost, 0, sizeof(p->cost));
  p->cost.plan.wsFlags = WHERE_VIRTUALTABLE;




  pIdxInfo = *p->ppIdxInfo;
  if( pIdxInfo==0 ){
    *p->ppIdxInfo = pIdxInfo = allocateIndexInfo(p);
  }
  if( pIdxInfo==0 ){
    return;
  }
  assert( pTab->azModuleArg && pTab->azModuleArg[0] );
  assert( sqlite3GetVTable(pParse->db, pTab) );
  for(bAllowIN=1; 1; bAllowIN--){
    assert( bAllowIN==0 || bAllowIN==1 );
    pIdxCons = *(struct sqlite3_index_constraint**)&pIdxInfo->aConstraint;
    pUsage = pIdxInfo->aConstraintUsage;
    for(i=0; i<pIdxInfo->nConstraint; i++, pIdxCons++){
      j = pIdxCons->iTermOffset;
      pTerm = &pWC->a[j];
      if( (pTerm->prereqRight&p->notReady)==0
       && (bAllowIN || (pTerm->eOperator & WO_IN)==0)
      ){
        pIdxCons->usable = 1;
      }else{
        pIdxCons->usable = 0;
      }
    }
    memset(pUsage, 0, sizeof(pUsage[0])*pIdxInfo->nConstraint);
    if( pIdxInfo->needToFreeIdxStr ){
      sqlite3_free(pIdxInfo->idxStr);
    }
    pIdxInfo->idxStr = 0;
    pIdxInfo->idxNum = 0;
    pIdxInfo->needToFreeIdxStr = 0;
    pIdxInfo->orderByConsumed = 0;

    pIdxInfo->estimatedCost = SQLITE_BIG_DBL / ((double)2);
    nOrderBy = pIdxInfo->nOrderBy;
    if( !p->pOrderBy ){
      pIdxInfo->nOrderBy = 0;
    }

    if( vtabBestIndex(pParse, pTab, pIdxInfo) ){
      return;
    }

    pIdxCons = *(struct sqlite3_index_constraint**)&pIdxInfo->aConstraint;
    for(i=0; i<pIdxInfo->nConstraint; i++, pIdxCons++){
      if( pUsage[i].argvIndex>0 ){
        j = pIdxCons->iTermOffset;
        pTerm = &pWC->a[j];
        p->cost.used |= pTerm->prereqRight;
        if( (pTerm->eOperator & WO_IN)!=0 ){
          if( pUsage[i].omit==0 ){




            break;
          }





          pIdxInfo->orderByConsumed = 0;
        }
      }
    }
    if( i>=pIdxInfo->nConstraint ) break;
  }




  if( pIdxInfo->orderByConsumed ){
    for(i=0; i<p->i; i++){
      if( (p->aLevel[i].plan.wsFlags & WHERE_UNIQUE)==0 ){
        pIdxInfo->orderByConsumed = 0;
      }
    }
  }





  rCost = pIdxInfo->estimatedCost;
  if( p->pOrderBy && pIdxInfo->orderByConsumed==0 ){
    rCost += estLog(rCost)*rCost;
  }
  if( (SQLITE_BIG_DBL/((double)2))<rCost ){
    p->cost.rCost = (SQLITE_BIG_DBL/((double)2));
  }else{
    p->cost.rCost = rCost;
  }
  p->cost.plan.u.pVtabIdx = pIdxInfo;
  if( pIdxInfo->orderByConsumed ){
    p->cost.plan.wsFlags |= WHERE_ORDERED;
    p->cost.plan.nOBSat = nOrderBy;
  }else{
    p->cost.plan.nOBSat = p->i ? p->aLevel[p->i-1].plan.nOBSat : 0;
  }
  p->cost.plan.nEq = 0;
  pIdxInfo->nOrderBy = nOrderBy;




  bestOrClauseIndex(p);
}
