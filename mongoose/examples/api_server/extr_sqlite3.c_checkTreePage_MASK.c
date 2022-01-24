#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zContext ;
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ i64 ;
struct TYPE_21__ {int usableSize; int /*<<< orphan*/  pageSize; scalar_t__ autoVacuum; } ;
struct TYPE_20__ {scalar_t__ nData; scalar_t__ nPayload; scalar_t__ nLocal; size_t iOverflow; scalar_t__ nKey; } ;
struct TYPE_19__ {int mallocFailed; scalar_t__ mxErr; TYPE_4__* pBt; } ;
struct TYPE_18__ {int nCell; int* aData; int leaf; int hdrOffset; scalar_t__ intKey; scalar_t__ isInit; } ;
typedef  int Pgno ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ IntegrityCk ;
typedef  TYPE_3__ CellInfo ;
typedef  TYPE_4__ BtShared ;

/* Variables and functions */
 int /*<<< orphan*/  PTRMAP_BTREE ; 
 int /*<<< orphan*/  PTRMAP_OVERFLOW1 ; 
 int SQLITE_CORRUPT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_4__*,int,TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*,TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int,char*) ; 
 int* FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (int*) ; 
 int FUNC11 (int*) ; 
 int FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,char*,char*,int,...) ; 

__attribute__((used)) static int FUNC18(
  IntegrityCk *pCheck,  /* Context for the sanity check */
  int iPage,            /* Page number of the page to check */
  char *zParentContext, /* Parent context */
  i64 *pnParentMinKey, 
  i64 *pnParentMaxKey
){
  MemPage *pPage;
  int i, rc, depth, d2, pgno, cnt;
  int hdr, cellStart;
  int nCell;
  u8 *data;
  BtShared *pBt;
  int usableSize;
  char zContext[100];
  char *hit = 0;
  i64 nMinKey = 0;
  i64 nMaxKey = 0;

  FUNC17(sizeof(zContext), zContext, "Page %d: ", iPage);

  /* Check that the page exists
  */
  pBt = pCheck->pBt;
  usableSize = pBt->usableSize;
  if( iPage==0 ) return 0;
  if( FUNC8(pCheck, iPage, zParentContext) ) return 0;
  if( (rc = FUNC1(pBt, (Pgno)iPage, &pPage, 0, 0))!=0 ){
    FUNC5(pCheck, zContext,
       "unable to get the page. error code=%d", rc);
    return 0;
  }

  /* Clear MemPage.isInit to make sure the corruption detection code in
  ** btreeInitPage() is executed.  */
  pPage->isInit = 0;
  if( (rc = FUNC2(pPage))!=0 ){
    FUNC0( rc==SQLITE_CORRUPT );  /* The only possible error from InitPage */
    FUNC5(pCheck, zContext, 
                   "btreeInitPage() returns error code %d", rc);
    FUNC14(pPage);
    return 0;
  }

  /* Check out all the cells.
  */
  depth = 0;
  for(i=0; i<pPage->nCell && pCheck->mxErr; i++){
    u8 *pCell;
    u32 sz;
    CellInfo info;

    /* Check payload overflow pages
    */
    FUNC17(sizeof(zContext), zContext,
             "On tree page %d cell %d: ", iPage, i);
    pCell = FUNC9(pPage,i);
    FUNC3(pPage, pCell, &info);
    sz = info.nData;
    if( !pPage->intKey ) sz += (int)info.nKey;
    /* For intKey pages, check that the keys are in order.
    */
    else if( i==0 ) nMinKey = nMaxKey = info.nKey;
    else{
      if( info.nKey <= nMaxKey ){
        FUNC5(pCheck, zContext, 
            "Rowid %lld out of order (previous was %lld)", info.nKey, nMaxKey);
      }
      nMaxKey = info.nKey;
    }
    FUNC0( sz==info.nPayload );
    if( (sz>info.nLocal) 
     && (&pCell[info.iOverflow]<=&pPage->aData[pBt->usableSize])
    ){
      int nPage = (sz - info.nLocal + usableSize - 5)/(usableSize - 4);
      Pgno pgnoOvfl = FUNC12(&pCell[info.iOverflow]);
#ifndef SQLITE_OMIT_AUTOVACUUM
      if( pBt->autoVacuum ){
        FUNC7(pCheck, pgnoOvfl, PTRMAP_OVERFLOW1, iPage, zContext);
      }
#endif
      FUNC6(pCheck, 0, pgnoOvfl, nPage, zContext);
    }

    /* Check sanity of left child page.
    */
    if( !pPage->leaf ){
      pgno = FUNC12(pCell);
#ifndef SQLITE_OMIT_AUTOVACUUM
      if( pBt->autoVacuum ){
        FUNC7(pCheck, pgno, PTRMAP_BTREE, iPage, zContext);
      }
#endif
      d2 = FUNC18(pCheck, pgno, zContext, &nMinKey, i==0 ? NULL : &nMaxKey);
      if( i>0 && d2!=depth ){
        FUNC5(pCheck, zContext, "Child page depth differs");
      }
      depth = d2;
    }
  }

  if( !pPage->leaf ){
    pgno = FUNC12(&pPage->aData[pPage->hdrOffset+8]);
    FUNC17(sizeof(zContext), zContext, 
                     "On page %d at right child: ", iPage);
#ifndef SQLITE_OMIT_AUTOVACUUM
    if( pBt->autoVacuum ){
      FUNC7(pCheck, pgno, PTRMAP_BTREE, iPage, zContext);
    }
#endif
    FUNC18(pCheck, pgno, zContext, NULL, !pPage->nCell ? NULL : &nMaxKey);
  }
 
  /* For intKey leaf pages, check that the min/max keys are in order
  ** with any left/parent/right pages.
  */
  if( pPage->leaf && pPage->intKey ){
    /* if we are a left child page */
    if( pnParentMinKey ){
      /* if we are the left most child page */
      if( !pnParentMaxKey ){
        if( nMaxKey > *pnParentMinKey ){
          FUNC5(pCheck, zContext, 
              "Rowid %lld out of order (max larger than parent min of %lld)",
              nMaxKey, *pnParentMinKey);
        }
      }else{
        if( nMinKey <= *pnParentMinKey ){
          FUNC5(pCheck, zContext, 
              "Rowid %lld out of order (min less than parent min of %lld)",
              nMinKey, *pnParentMinKey);
        }
        if( nMaxKey > *pnParentMaxKey ){
          FUNC5(pCheck, zContext, 
              "Rowid %lld out of order (max larger than parent max of %lld)",
              nMaxKey, *pnParentMaxKey);
        }
        *pnParentMinKey = nMaxKey;
      }
    /* else if we're a right child page */
    } else if( pnParentMaxKey ){
      if( nMinKey <= *pnParentMaxKey ){
        FUNC5(pCheck, zContext, 
            "Rowid %lld out of order (min less than parent max of %lld)",
            nMinKey, *pnParentMaxKey);
      }
    }
  }

  /* Check for complete coverage of the page
  */
  data = pPage->aData;
  hdr = pPage->hdrOffset;
  hit = FUNC16( pBt->pageSize );
  if( hit==0 ){
    pCheck->mallocFailed = 1;
  }else{
    int contentOffset = FUNC11(&data[hdr+5]);
    FUNC0( contentOffset<=usableSize );  /* Enforced by btreeInitPage() */
    FUNC13(hit+contentOffset, 0, usableSize-contentOffset);
    FUNC13(hit, 1, contentOffset);
    nCell = FUNC10(&data[hdr+3]);
    cellStart = hdr + 12 - 4*pPage->leaf;
    for(i=0; i<nCell; i++){
      int pc = FUNC10(&data[cellStart+i*2]);
      u32 size = 65536;
      int j;
      if( pc<=usableSize-4 ){
        size = FUNC4(pPage, &data[pc]);
      }
      if( (int)(pc+size-1)>=usableSize ){
        FUNC5(pCheck, 0, 
            "Corruption detected in cell %d on page %d",i,iPage);
      }else{
        for(j=pc+size-1; j>=pc; j--) hit[j]++;
      }
    }
    i = FUNC10(&data[hdr+1]);
    while( i>0 ){
      int size, j;
      FUNC0( i<=usableSize-4 );     /* Enforced by btreeInitPage() */
      size = FUNC10(&data[i+2]);
      FUNC0( i+size<=usableSize );  /* Enforced by btreeInitPage() */
      for(j=i+size-1; j>=i; j--) hit[j]++;
      j = FUNC10(&data[i]);
      FUNC0( j==0 || j>i+size );  /* Enforced by btreeInitPage() */
      FUNC0( j<=usableSize-4 );   /* Enforced by btreeInitPage() */
      i = j;
    }
    for(i=cnt=0; i<usableSize; i++){
      if( hit[i]==0 ){
        cnt++;
      }else if( hit[i]>1 ){
        FUNC5(pCheck, 0,
          "Multiple uses for byte %d of page %d", i, iPage);
        break;
      }
    }
    if( cnt!=data[hdr+7] ){
      FUNC5(pCheck, 0, 
          "Fragmentation of %d bytes reported as %d on page %d",
          cnt, data[hdr+7], iPage);
    }
  }
  FUNC15(hit);
  FUNC14(pPage);
  return depth+1;
}