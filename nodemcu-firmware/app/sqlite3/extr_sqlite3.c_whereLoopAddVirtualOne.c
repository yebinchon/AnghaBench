
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int u16 ;
struct sqlite3_index_constraint_usage {int argvIndex; scalar_t__ omit; } ;
struct sqlite3_index_constraint {size_t iTermOffset; int usable; } ;
struct SrcList_item {TYPE_14__* pTab; scalar_t__ colUsed; } ;
typedef int sqlite3_uint64 ;
typedef scalar_t__ sqlite3_int64 ;
struct TYPE_21__ {int nConstraint; scalar_t__ needToFreeIdxStr; double estimatedCost; int estimatedRows; int idxFlags; scalar_t__ nOrderBy; scalar_t__ orderByConsumed; scalar_t__ idxStr; scalar_t__ idxNum; int aConstraint; scalar_t__ colUsed; struct sqlite3_index_constraint_usage* aConstraintUsage; } ;
typedef TYPE_5__ sqlite3_index_info ;
typedef int pUsage ;
typedef scalar_t__ i8 ;
struct TYPE_22__ {int prereqRight; int eOperator; } ;
typedef TYPE_6__ WhereTerm ;
struct TYPE_23__ {TYPE_2__* pWInfo; TYPE_8__* pNew; TYPE_9__* pWC; } ;
typedef TYPE_7__ WhereLoopBuilder ;
struct TYPE_19__ {int omitMask; scalar_t__ needFree; scalar_t__ idxStr; scalar_t__ isOrdered; scalar_t__ idxNum; } ;
struct TYPE_20__ {TYPE_3__ vtab; } ;
struct TYPE_24__ {size_t iTab; int prereq; int nLSlot; int nLTerm; TYPE_4__ u; int wsFlags; int nOut; int rRun; scalar_t__ rSetup; TYPE_6__** aLTerm; } ;
typedef TYPE_8__ WhereLoop ;
struct TYPE_25__ {int nTerm; TYPE_6__* a; } ;
typedef TYPE_9__ WhereClause ;
struct TYPE_18__ {TYPE_1__* pTabList; int * pParse; } ;
struct TYPE_17__ {struct SrcList_item* a; } ;
struct TYPE_16__ {int zName; } ;
typedef int Parse ;
typedef int Bitmask ;


 double SQLITE_BIG_DBL ;
 int SQLITE_ERROR ;
 int SQLITE_INDEX_SCAN_UNIQUE ;
 int SQLITE_OK ;
 int WHERETRACE (int,char*) ;
 int WHERE_ONEROW ;
 int WO_IN ;
 int assert (int) ;
 int memset (struct sqlite3_index_constraint_usage*,int ,int) ;
 int sqlite3ErrorMsg (int *,char*,int ) ;
 int sqlite3LogEst (int) ;
 int sqlite3LogEstFromDouble (double) ;
 int sqlite3_free (scalar_t__) ;
 int testcase (int) ;
 int vtabBestIndex (int *,TYPE_14__*,TYPE_5__*) ;
 int whereLoopInsert (TYPE_7__*,TYPE_8__*) ;

__attribute__((used)) static int whereLoopAddVirtualOne(
  WhereLoopBuilder *pBuilder,
  Bitmask mPrereq,
  Bitmask mUsable,
  u16 mExclude,
  sqlite3_index_info *pIdxInfo,
  u16 mNoOmit,
  int *pbIn
){
  WhereClause *pWC = pBuilder->pWC;
  struct sqlite3_index_constraint *pIdxCons;
  struct sqlite3_index_constraint_usage *pUsage = pIdxInfo->aConstraintUsage;
  int i;
  int mxTerm;
  int rc = SQLITE_OK;
  WhereLoop *pNew = pBuilder->pNew;
  Parse *pParse = pBuilder->pWInfo->pParse;
  struct SrcList_item *pSrc = &pBuilder->pWInfo->pTabList->a[pNew->iTab];
  int nConstraint = pIdxInfo->nConstraint;

  assert( (mUsable & mPrereq)==mPrereq );
  *pbIn = 0;
  pNew->prereq = mPrereq;



  pIdxCons = *(struct sqlite3_index_constraint**)&pIdxInfo->aConstraint;
  for(i=0; i<nConstraint; i++, pIdxCons++){
    WhereTerm *pTerm = &pWC->a[pIdxCons->iTermOffset];
    pIdxCons->usable = 0;
    if( (pTerm->prereqRight & mUsable)==pTerm->prereqRight
     && (pTerm->eOperator & mExclude)==0
    ){
      pIdxCons->usable = 1;
    }
  }


  memset(pUsage, 0, sizeof(pUsage[0])*nConstraint);
  assert( pIdxInfo->needToFreeIdxStr==0 );
  pIdxInfo->idxStr = 0;
  pIdxInfo->idxNum = 0;
  pIdxInfo->orderByConsumed = 0;
  pIdxInfo->estimatedCost = SQLITE_BIG_DBL / (double)2;
  pIdxInfo->estimatedRows = 25;
  pIdxInfo->idxFlags = 0;
  pIdxInfo->colUsed = (sqlite3_int64)pSrc->colUsed;


  rc = vtabBestIndex(pParse, pSrc->pTab, pIdxInfo);
  if( rc ) return rc;

  mxTerm = -1;
  assert( pNew->nLSlot>=nConstraint );
  for(i=0; i<nConstraint; i++) pNew->aLTerm[i] = 0;
  pNew->u.vtab.omitMask = 0;
  pIdxCons = *(struct sqlite3_index_constraint**)&pIdxInfo->aConstraint;
  for(i=0; i<nConstraint; i++, pIdxCons++){
    int iTerm;
    if( (iTerm = pUsage[i].argvIndex - 1)>=0 ){
      WhereTerm *pTerm;
      int j = pIdxCons->iTermOffset;
      if( iTerm>=nConstraint
       || j<0
       || j>=pWC->nTerm
       || pNew->aLTerm[iTerm]!=0
       || pIdxCons->usable==0
      ){
        rc = SQLITE_ERROR;
        sqlite3ErrorMsg(pParse,"%s.xBestIndex malfunction",pSrc->pTab->zName);
        return rc;
      }
      testcase( iTerm==nConstraint-1 );
      testcase( j==0 );
      testcase( j==pWC->nTerm-1 );
      pTerm = &pWC->a[j];
      pNew->prereq |= pTerm->prereqRight;
      assert( iTerm<pNew->nLSlot );
      pNew->aLTerm[iTerm] = pTerm;
      if( iTerm>mxTerm ) mxTerm = iTerm;
      testcase( iTerm==15 );
      testcase( iTerm==16 );
      if( iTerm<16 && pUsage[i].omit ) pNew->u.vtab.omitMask |= 1<<iTerm;
      if( (pTerm->eOperator & WO_IN)!=0 ){





        pIdxInfo->orderByConsumed = 0;
        pIdxInfo->idxFlags &= ~SQLITE_INDEX_SCAN_UNIQUE;
        *pbIn = 1; assert( (mExclude & WO_IN)==0 );
      }
    }
  }
  pNew->u.vtab.omitMask &= ~mNoOmit;

  pNew->nLTerm = mxTerm+1;
  assert( pNew->nLTerm<=pNew->nLSlot );
  pNew->u.vtab.idxNum = pIdxInfo->idxNum;
  pNew->u.vtab.needFree = pIdxInfo->needToFreeIdxStr;
  pIdxInfo->needToFreeIdxStr = 0;
  pNew->u.vtab.idxStr = pIdxInfo->idxStr;
  pNew->u.vtab.isOrdered = (i8)(pIdxInfo->orderByConsumed ?
      pIdxInfo->nOrderBy : 0);
  pNew->rSetup = 0;
  pNew->rRun = sqlite3LogEstFromDouble(pIdxInfo->estimatedCost);
  pNew->nOut = sqlite3LogEst(pIdxInfo->estimatedRows);



  if( pIdxInfo->idxFlags & SQLITE_INDEX_SCAN_UNIQUE ){
    pNew->wsFlags |= WHERE_ONEROW;
  }else{
    pNew->wsFlags &= ~WHERE_ONEROW;
  }
  rc = whereLoopInsert(pBuilder, pNew);
  if( pNew->u.vtab.needFree ){
    sqlite3_free(pNew->u.vtab.idxStr);
    pNew->u.vtab.needFree = 0;
  }
  WHERETRACE(0xffff, ("  bIn=%d prereqIn=%04llx prereqOut=%04llx\n",
                      *pbIn, (sqlite3_uint64)mPrereq,
                      (sqlite3_uint64)(pNew->prereq & ~mPrereq)));

  return rc;
}
