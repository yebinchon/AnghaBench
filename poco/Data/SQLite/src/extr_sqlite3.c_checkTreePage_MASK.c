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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_21__ {int usableSize; scalar_t__ autoVacuum; } ;
struct TYPE_20__ {int nSize; scalar_t__ nPayload; scalar_t__ nLocal; int /*<<< orphan*/  nKey; } ;
struct TYPE_19__ {char* zPfx; int v1; int v2; int* heap; scalar_t__ mxErr; TYPE_4__* pBt; } ;
struct TYPE_18__ {int isInit; int* aData; int hdrOffset; int nCell; int leaf; int* aCellIdx; int (* xCellSize ) (TYPE_1__*,int*) ;scalar_t__ intKey; int /*<<< orphan*/  (* xParseCell ) (TYPE_1__*,int*,TYPE_3__*) ;} ;
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
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_4__*,int,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 scalar_t__ FUNC4 (int*,int*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int) ; 
 int FUNC10 (int*) ; 
 int FUNC11 (int*) ; 
 int FUNC12 (int*) ; 
 int FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int*,TYPE_3__*) ; 
 int FUNC16 (TYPE_1__*,int*) ; 

__attribute__((used)) static int FUNC17(
  IntegrityCk *pCheck,  /* Context for the sanity check */
  int iPage,            /* Page number of the page to check */
  i64 *piMinKey,        /* Write minimum integer primary key here */
  i64 maxKey            /* Error if integer primary key greater than this */
){
  MemPage *pPage = 0;      /* The page being analyzed */
  int i;                   /* Loop counter */
  int rc;                  /* Result code from subroutine call */
  int depth = -1, d2;      /* Depth of a subtree */
  int pgno;                /* Page number */
  int nFrag;               /* Number of fragmented bytes on the page */
  int hdr;                 /* Offset to the page header */
  int cellStart;           /* Offset to the start of the cell pointer array */
  int nCell;               /* Number of cells */
  int doCoverageCheck = 1; /* True if cell coverage checking should be done */
  int keyCanBeEqual = 1;   /* True if IPK can be equal to maxKey
                           ** False if IPK must be strictly less than maxKey */
  u8 *data;                /* Page content */
  u8 *pCell;               /* Cell content */
  u8 *pCellIdx;            /* Next element of the cell pointer array */
  BtShared *pBt;           /* The BtShared object that owns pPage */
  u32 pc;                  /* Address of a cell */
  u32 usableSize;          /* Usable size of the page */
  u32 contentOffset;       /* Offset to the start of the cell content area */
  u32 *heap = 0;           /* Min-heap used for checking cell coverage */
  u32 x, prev = 0;         /* Next and previous entry on the min-heap */
  const char *saved_zPfx = pCheck->zPfx;
  int saved_v1 = pCheck->v1;
  int saved_v2 = pCheck->v2;
  u8 savedIsInit = 0;

  /* Check that the page exists
  */
  pBt = pCheck->pBt;
  usableSize = pBt->usableSize;
  if( iPage==0 ) return 0;
  if( FUNC9(pCheck, iPage) ) return 0;
  pCheck->zPfx = "Page %d: ";
  pCheck->v1 = iPage;
  if( (rc = FUNC2(pBt, (Pgno)iPage, &pPage, 0))!=0 ){
    FUNC6(pCheck,
       "unable to get the page. error code=%d", rc);
    goto end_of_check;
  }

  /* Clear MemPage.isInit to make sure the corruption detection code in
  ** btreeInitPage() is executed.  */
  savedIsInit = pPage->isInit;
  pPage->isInit = 0;
  if( (rc = FUNC5(pPage))!=0 ){
    FUNC0( rc==SQLITE_CORRUPT );  /* The only possible error from InitPage */
    FUNC6(pCheck,
                   "btreeInitPage() returns error code %d", rc);
    goto end_of_check;
  }
  if( (rc = FUNC1(pPage))!=0 ){
    FUNC0( rc==SQLITE_CORRUPT );
    FUNC6(pCheck, "free space corruption", rc);
    goto end_of_check;
  }
  data = pPage->aData;
  hdr = pPage->hdrOffset;

  /* Set up for cell analysis */
  pCheck->zPfx = "On tree page %d cell %d: ";
  contentOffset = FUNC12(&data[hdr+5]);
  FUNC0( contentOffset<=usableSize );  /* Enforced by btreeInitPage() */

  /* EVIDENCE-OF: R-37002-32774 The two-byte integer at offset 3 gives the
  ** number of cells on the page. */
  nCell = FUNC10(&data[hdr+3]);
  FUNC0( pPage->nCell==nCell );

  /* EVIDENCE-OF: R-23882-45353 The cell pointer array of a b-tree page
  ** immediately follows the b-tree page header. */
  cellStart = hdr + 12 - 4*pPage->leaf;
  FUNC0( pPage->aCellIdx==&data[cellStart] );
  pCellIdx = &data[cellStart + 2*(nCell-1)];

  if( !pPage->leaf ){
    /* Analyze the right-child page of internal pages */
    pgno = FUNC13(&data[hdr+8]);
#ifndef SQLITE_OMIT_AUTOVACUUM
    if( pBt->autoVacuum ){
      pCheck->zPfx = "On page %d at right child: ";
      FUNC8(pCheck, pgno, PTRMAP_BTREE, iPage);
    }
#endif
    depth = FUNC17(pCheck, pgno, &maxKey, maxKey);
    keyCanBeEqual = 0;
  }else{
    /* For leaf pages, the coverage check will occur in the same loop
    ** as the other cell checks, so initialize the heap.  */
    heap = pCheck->heap;
    heap[0] = 0;
  }

  /* EVIDENCE-OF: R-02776-14802 The cell pointer array consists of K 2-byte
  ** integer offsets to the cell contents. */
  for(i=nCell-1; i>=0 && pCheck->mxErr; i--){
    CellInfo info;

    /* Check cell size */
    pCheck->v2 = i;
    FUNC0( pCellIdx==&data[cellStart + i*2] );
    pc = FUNC11(pCellIdx);
    pCellIdx -= 2;
    if( pc<contentOffset || pc>usableSize-4 ){
      FUNC6(pCheck, "Offset %d out of range %d..%d",
                             pc, contentOffset, usableSize-4);
      doCoverageCheck = 0;
      continue;
    }
    pCell = &data[pc];
    pPage->xParseCell(pPage, pCell, &info);
    if( pc+info.nSize>usableSize ){
      FUNC6(pCheck, "Extends off end of page");
      doCoverageCheck = 0;
      continue;
    }

    /* Check for integer primary key out of range */
    if( pPage->intKey ){
      if( keyCanBeEqual ? (info.nKey > maxKey) : (info.nKey >= maxKey) ){
        FUNC6(pCheck, "Rowid %lld out of order", info.nKey);
      }
      maxKey = info.nKey;
      keyCanBeEqual = 0;     /* Only the first key on the page may ==maxKey */
    }

    /* Check the content overflow list */
    if( info.nPayload>info.nLocal ){
      u32 nPage;       /* Number of pages on the overflow chain */
      Pgno pgnoOvfl;   /* First page of the overflow chain */
      FUNC0( pc + info.nSize - 4 <= usableSize );
      nPage = (info.nPayload - info.nLocal + usableSize - 5)/(usableSize - 4);
      pgnoOvfl = FUNC13(&pCell[info.nSize - 4]);
#ifndef SQLITE_OMIT_AUTOVACUUM
      if( pBt->autoVacuum ){
        FUNC8(pCheck, pgnoOvfl, PTRMAP_OVERFLOW1, iPage);
      }
#endif
      FUNC7(pCheck, 0, pgnoOvfl, nPage);
    }

    if( !pPage->leaf ){
      /* Check sanity of left child page for internal pages */
      pgno = FUNC13(pCell);
#ifndef SQLITE_OMIT_AUTOVACUUM
      if( pBt->autoVacuum ){
        FUNC8(pCheck, pgno, PTRMAP_BTREE, iPage);
      }
#endif
      d2 = FUNC17(pCheck, pgno, &maxKey, maxKey);
      keyCanBeEqual = 0;
      if( d2!=depth ){
        FUNC6(pCheck, "Child page depth differs");
        depth = d2;
      }
    }else{
      /* Populate the coverage-checking heap for leaf pages */
      FUNC3(heap, (pc<<16)|(pc+info.nSize-1));
    }
  }
  *piMinKey = maxKey;

  /* Check for complete coverage of the page
  */
  pCheck->zPfx = 0;
  if( doCoverageCheck && pCheck->mxErr>0 ){
    /* For leaf pages, the min-heap has already been initialized and the
    ** cells have already been inserted.  But for internal pages, that has
    ** not yet been done, so do it now */
    if( !pPage->leaf ){
      heap = pCheck->heap;
      heap[0] = 0;
      for(i=nCell-1; i>=0; i--){
        u32 size;
        pc = FUNC11(&data[cellStart+i*2]);
        size = pPage->xCellSize(pPage, &data[pc]);
        FUNC3(heap, (pc<<16)|(pc+size-1));
      }
    }
    /* Add the freeblocks to the min-heap
    **
    ** EVIDENCE-OF: R-20690-50594 The second field of the b-tree page header
    ** is the offset of the first freeblock, or zero if there are no
    ** freeblocks on the page. 
    */
    i = FUNC10(&data[hdr+1]);
    while( i>0 ){
      int size, j;
      FUNC0( (u32)i<=usableSize-4 ); /* Enforced by btreeComputeFreeSpace() */
      size = FUNC10(&data[i+2]);
      FUNC0( (u32)(i+size)<=usableSize ); /* due to btreeComputeFreeSpace() */
      FUNC3(heap, (((u32)i)<<16)|(i+size-1));
      /* EVIDENCE-OF: R-58208-19414 The first 2 bytes of a freeblock are a
      ** big-endian integer which is the offset in the b-tree page of the next
      ** freeblock in the chain, or zero if the freeblock is the last on the
      ** chain. */
      j = FUNC10(&data[i]);
      /* EVIDENCE-OF: R-06866-39125 Freeblocks are always connected in order of
      ** increasing offset. */
      FUNC0( j==0 || j>i+size );     /* Enforced by btreeComputeFreeSpace() */
      FUNC0( (u32)j<=usableSize-4 ); /* Enforced by btreeComputeFreeSpace() */
      i = j;
    }
    /* Analyze the min-heap looking for overlap between cells and/or 
    ** freeblocks, and counting the number of untracked bytes in nFrag.
    ** 
    ** Each min-heap entry is of the form:    (start_address<<16)|end_address.
    ** There is an implied first entry the covers the page header, the cell
    ** pointer index, and the gap between the cell pointer index and the start
    ** of cell content.  
    **
    ** The loop below pulls entries from the min-heap in order and compares
    ** the start_address against the previous end_address.  If there is an
    ** overlap, that means bytes are used multiple times.  If there is a gap,
    ** that gap is added to the fragmentation count.
    */
    nFrag = 0;
    prev = contentOffset - 1;   /* Implied first min-heap entry */
    while( FUNC4(heap,&x) ){
      if( (prev&0xffff)>=(x>>16) ){
        FUNC6(pCheck,
          "Multiple uses for byte %u of page %d", x>>16, iPage);
        break;
      }else{
        nFrag += (x>>16) - (prev&0xffff) - 1;
        prev = x;
      }
    }
    nFrag += usableSize - (prev&0xffff) - 1;
    /* EVIDENCE-OF: R-43263-13491 The total number of bytes in all fragments
    ** is stored in the fifth field of the b-tree page header.
    ** EVIDENCE-OF: R-07161-27322 The one-byte integer at offset 7 gives the
    ** number of fragmented free bytes within the cell content area.
    */
    if( heap[0]==0 && nFrag!=data[hdr+7] ){
      FUNC6(pCheck,
          "Fragmentation of %d bytes reported as %d on page %d",
          nFrag, data[hdr+7], iPage);
    }
  }

end_of_check:
  if( !doCoverageCheck ) pPage->isInit = savedIsInit;
  FUNC14(pPage);
  pCheck->zPfx = saved_zPfx;
  pCheck->v1 = saved_v1;
  pCheck->v2 = saved_v2;
  return depth+1;
}