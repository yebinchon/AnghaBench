
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_21__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int u16 ;
struct SrcList_item {TYPE_21__* pTab; } ;
typedef int sqlite3_uint64 ;
struct TYPE_30__ {int nConstraint; int idxStr; scalar_t__ needToFreeIdxStr; TYPE_5__* aConstraint; } ;
typedef TYPE_6__ sqlite3_index_info ;
struct TYPE_31__ {int pOrderBy; TYPE_8__* pNew; TYPE_10__* pWC; TYPE_9__* pWInfo; } ;
typedef TYPE_7__ WhereLoopBuilder ;
struct TYPE_26__ {scalar_t__ needFree; } ;
struct TYPE_27__ {TYPE_2__ vtab; } ;
struct TYPE_32__ {size_t iTab; scalar_t__ prereq; TYPE_3__ u; scalar_t__ nLTerm; int wsFlags; scalar_t__ rSetup; } ;
typedef TYPE_8__ WhereLoop ;
struct TYPE_33__ {TYPE_1__* pTabList; TYPE_11__* pParse; } ;
typedef TYPE_9__ WhereInfo ;
struct TYPE_22__ {TYPE_4__* a; } ;
typedef TYPE_10__ WhereClause ;
struct TYPE_29__ {size_t iTermOffset; } ;
struct TYPE_28__ {scalar_t__ prereqRight; } ;
struct TYPE_25__ {int zName; } ;
struct TYPE_24__ {struct SrcList_item* a; } ;
struct TYPE_23__ {int db; } ;
typedef TYPE_11__ Parse ;
typedef scalar_t__ Bitmask ;


 scalar_t__ ALLBITS ;
 int IsVirtual (TYPE_21__*) ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int WHERETRACE (int,char*) ;
 int WHERE_VIRTUALTABLE ;
 int WO_IN ;
 TYPE_6__* allocateIndexInfo (TYPE_11__*,TYPE_10__*,scalar_t__,struct SrcList_item*,int ,int *) ;
 int assert (int) ;
 int sqlite3DbFree (int ,TYPE_6__*) ;
 int sqlite3DbFreeNN (int ,TYPE_6__*) ;
 int sqlite3_free (int ) ;
 int whereLoopAddVirtualOne (TYPE_7__*,scalar_t__,scalar_t__,int ,TYPE_6__*,int ,int*) ;
 scalar_t__ whereLoopResize (int ,TYPE_8__*,int) ;

__attribute__((used)) static int whereLoopAddVirtual(
  WhereLoopBuilder *pBuilder,
  Bitmask mPrereq,
  Bitmask mUnusable
){
  int rc = SQLITE_OK;
  WhereInfo *pWInfo;
  Parse *pParse;
  WhereClause *pWC;
  struct SrcList_item *pSrc;
  sqlite3_index_info *p;
  int nConstraint;
  int bIn;
  WhereLoop *pNew;
  Bitmask mBest;
  u16 mNoOmit;

  assert( (mPrereq & mUnusable)==0 );
  pWInfo = pBuilder->pWInfo;
  pParse = pWInfo->pParse;
  pWC = pBuilder->pWC;
  pNew = pBuilder->pNew;
  pSrc = &pWInfo->pTabList->a[pNew->iTab];
  assert( IsVirtual(pSrc->pTab) );
  p = allocateIndexInfo(pParse, pWC, mUnusable, pSrc, pBuilder->pOrderBy,
      &mNoOmit);
  if( p==0 ) return SQLITE_NOMEM_BKPT;
  pNew->rSetup = 0;
  pNew->wsFlags = WHERE_VIRTUALTABLE;
  pNew->nLTerm = 0;
  pNew->u.vtab.needFree = 0;
  nConstraint = p->nConstraint;
  if( whereLoopResize(pParse->db, pNew, nConstraint) ){
    sqlite3DbFree(pParse->db, p);
    return SQLITE_NOMEM_BKPT;
  }


  WHERETRACE(0x800, ("BEGIN %s.addVirtual()\n", pSrc->pTab->zName));
  WHERETRACE(0x40, ("  VirtualOne: all usable\n"));
  rc = whereLoopAddVirtualOne(pBuilder, mPrereq, ALLBITS, 0, p, mNoOmit, &bIn);






  if( rc==SQLITE_OK && ((mBest = (pNew->prereq & ~mPrereq))!=0 || bIn) ){
    int seenZero = 0;
    int seenZeroNoIN = 0;
    Bitmask mPrev = 0;
    Bitmask mBestNoIn = 0;



    if( bIn ){
      WHERETRACE(0x40, ("  VirtualOne: all usable w/o IN\n"));
      rc = whereLoopAddVirtualOne(
          pBuilder, mPrereq, ALLBITS, WO_IN, p, mNoOmit, &bIn);
      assert( bIn==0 );
      mBestNoIn = pNew->prereq & ~mPrereq;
      if( mBestNoIn==0 ){
        seenZero = 1;
        seenZeroNoIN = 1;
      }
    }



    while( rc==SQLITE_OK ){
      int i;
      Bitmask mNext = ALLBITS;
      assert( mNext>0 );
      for(i=0; i<nConstraint; i++){
        Bitmask mThis = (
            pWC->a[p->aConstraint[i].iTermOffset].prereqRight & ~mPrereq
        );
        if( mThis>mPrev && mThis<mNext ) mNext = mThis;
      }
      mPrev = mNext;
      if( mNext==ALLBITS ) break;
      if( mNext==mBest || mNext==mBestNoIn ) continue;
      WHERETRACE(0x40, ("  VirtualOne: mPrev=%04llx mNext=%04llx\n",
                       (sqlite3_uint64)mPrev, (sqlite3_uint64)mNext));
      rc = whereLoopAddVirtualOne(
          pBuilder, mPrereq, mNext|mPrereq, 0, p, mNoOmit, &bIn);
      if( pNew->prereq==mPrereq ){
        seenZero = 1;
        if( bIn==0 ) seenZeroNoIN = 1;
      }
    }




    if( rc==SQLITE_OK && seenZero==0 ){
      WHERETRACE(0x40, ("  VirtualOne: all disabled\n"));
      rc = whereLoopAddVirtualOne(
          pBuilder, mPrereq, mPrereq, 0, p, mNoOmit, &bIn);
      if( bIn==0 ) seenZeroNoIN = 1;
    }




    if( rc==SQLITE_OK && seenZeroNoIN==0 ){
      WHERETRACE(0x40, ("  VirtualOne: all disabled and w/o IN\n"));
      rc = whereLoopAddVirtualOne(
          pBuilder, mPrereq, mPrereq, WO_IN, p, mNoOmit, &bIn);
    }
  }

  if( p->needToFreeIdxStr ) sqlite3_free(p->idxStr);
  sqlite3DbFreeNN(pParse->db, p);
  WHERETRACE(0x800, ("END %s.addVirtual(), rc=%d\n", pSrc->pTab->zName, rc));
  return rc;
}
