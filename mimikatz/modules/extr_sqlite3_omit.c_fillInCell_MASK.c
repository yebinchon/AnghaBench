#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_18__ {size_t pageSize; int usableSize; scalar_t__ autoVacuum; int /*<<< orphan*/  mutex; } ;
struct TYPE_17__ {int nData; int nZero; int nKey; int /*<<< orphan*/ * pKey; int /*<<< orphan*/ * pData; } ;
struct TYPE_16__ {unsigned char* pPayload; int nKey; int nSize; int nLocal; } ;
struct TYPE_15__ {unsigned char* aData; int childPtrSize; int intKeyLeaf; int maxLocal; int minLocal; int /*<<< orphan*/  pDbPage; int /*<<< orphan*/  (* xParseCell ) (TYPE_1__*,unsigned char*,TYPE_2__*) ;TYPE_4__* pBt; scalar_t__ intKey; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ CellInfo ;
typedef  TYPE_3__ BtreePayload ;
typedef  TYPE_4__ BtShared ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  PTRMAP_OVERFLOW1 ; 
 int /*<<< orphan*/  PTRMAP_OVERFLOW2 ; 
 int SQLITE_OK ; 
 int FUNC2 (TYPE_4__*,TYPE_1__**,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,scalar_t__) ; 
 scalar_t__ FUNC8 (unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,unsigned char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(
  MemPage *pPage,                /* The page that contains the cell */
  unsigned char *pCell,          /* Complete text of the cell */
  const BtreePayload *pX,        /* Payload with which to construct the cell */
  int *pnSize                    /* Write cell size here */
){
  int nPayload;
  const u8 *pSrc;
  int nSrc, n, rc, mn;
  int spaceLeft;
  MemPage *pToRelease;
  unsigned char *pPrior;
  unsigned char *pPayload;
  BtShared *pBt;
  Pgno pgnoOvfl;
  int nHeader;

  FUNC3( FUNC12(pPage->pBt->mutex) );

  /* pPage is not necessarily writeable since pCell might be auxiliary
  ** buffer space that is separate from the pPage buffer area */
  FUNC3( pCell<pPage->aData || pCell>=&pPage->aData[pPage->pBt->pageSize]
            || FUNC11(pPage->pDbPage) );

  /* Fill in the header. */
  nHeader = pPage->childPtrSize;
  if( pPage->intKey ){
    nPayload = pX->nData + pX->nZero;
    pSrc = pX->pData;
    nSrc = pX->nData;
    FUNC3( pPage->intKeyLeaf ); /* fillInCell() only called for leaves */
    nHeader += FUNC9(&pCell[nHeader], nPayload);
    nHeader += FUNC8(&pCell[nHeader], *(u64*)&pX->nKey);
  }else{
    FUNC3( pX->nKey<=0x7fffffff && pX->pKey!=0 );
    nSrc = nPayload = (int)pX->nKey;
    pSrc = pX->pKey;
    nHeader += FUNC9(&pCell[nHeader], nPayload);
  }
  
  /* Fill in the payload */
  pPayload = &pCell[nHeader];
  if( nPayload<=pPage->maxLocal ){
    /* This is the common case where everything fits on the btree page
    ** and no overflow pages are required. */
    n = nHeader + nPayload;
    FUNC14( n==3 );
    FUNC14( n==4 );
    if( n<4 ) n = 4;
    *pnSize = n;
    FUNC3( nSrc<=nPayload );
    FUNC14( nSrc<nPayload );
    FUNC4(pPayload, pSrc, nSrc);
    FUNC5(pPayload+nSrc, 0, nPayload-nSrc);
    return SQLITE_OK;
  }

  /* If we reach this point, it means that some of the content will need
  ** to spill onto overflow pages.
  */
  mn = pPage->minLocal;
  n = mn + (nPayload - mn) % (pPage->pBt->usableSize - 4);
  FUNC14( n==pPage->maxLocal );
  FUNC14( n==pPage->maxLocal+1 );
  if( n > pPage->maxLocal ) n = mn;
  spaceLeft = n;
  *pnSize = n + nHeader + 4;
  pPrior = &pCell[nHeader+n];
  pToRelease = 0;
  pgnoOvfl = 0;
  pBt = pPage->pBt;

  /* At this point variables should be set as follows:
  **
  **   nPayload           Total payload size in bytes
  **   pPayload           Begin writing payload here
  **   spaceLeft          Space available at pPayload.  If nPayload>spaceLeft,
  **                      that means content must spill into overflow pages.
  **   *pnSize            Size of the local cell (not counting overflow pages)
  **   pPrior             Where to write the pgno of the first overflow page
  **
  ** Use a call to btreeParseCellPtr() to verify that the values above
  ** were computed correctly.
  */
#ifdef SQLITE_DEBUG
  {
    CellInfo info;
    pPage->xParseCell(pPage, pCell, &info);
    assert( nHeader==(int)(info.pPayload - pCell) );
    assert( info.nKey==pX->nKey );
    assert( *pnSize == info.nSize );
    assert( spaceLeft == info.nLocal );
  }
#endif

  /* Write the payload into the local Cell and any extra into overflow pages */
  while( 1 ){
    n = nPayload;
    if( n>spaceLeft ) n = spaceLeft;

    /* If pToRelease is not zero than pPayload points into the data area
    ** of pToRelease.  Make sure pToRelease is still writeable. */
    FUNC3( pToRelease==0 || FUNC11(pToRelease->pDbPage) );

    /* If pPayload is part of the data area of pPage, then make sure pPage
    ** is still writeable */
    FUNC3( pPayload<pPage->aData || pPayload>=&pPage->aData[pBt->pageSize]
            || FUNC11(pPage->pDbPage) );

    if( nSrc>=n ){
      FUNC4(pPayload, pSrc, n);
    }else if( nSrc>0 ){
      n = nSrc;
      FUNC4(pPayload, pSrc, n);
    }else{
      FUNC5(pPayload, 0, n);
    }
    nPayload -= n;
    if( nPayload<=0 ) break;
    pPayload += n;
    pSrc += n;
    nSrc -= n;
    spaceLeft -= n;
    if( spaceLeft==0 ){
      MemPage *pOvfl = 0;
#ifndef SQLITE_OMIT_AUTOVACUUM
      Pgno pgnoPtrmap = pgnoOvfl; /* Overflow page pointer-map entry page */
      if( pBt->autoVacuum ){
        do{
          pgnoOvfl++;
        } while( 
          FUNC1(pBt, pgnoOvfl) || pgnoOvfl==FUNC0(pBt) 
        );
      }
#endif
      rc = FUNC2(pBt, &pOvfl, &pgnoOvfl, pgnoOvfl, 0);
#ifndef SQLITE_OMIT_AUTOVACUUM
      /* If the database supports auto-vacuum, and the second or subsequent
      ** overflow page is being allocated, add an entry to the pointer-map
      ** for that page now. 
      **
      ** If this is the first overflow page, then write a partial entry 
      ** to the pointer-map. If we write nothing to this pointer-map slot,
      ** then the optimistic overflow chain processing in clearCell()
      ** may misinterpret the uninitialized values and delete the
      ** wrong pages from the database.
      */
      if( pBt->autoVacuum && rc==SQLITE_OK ){
        u8 eType = (pgnoPtrmap?PTRMAP_OVERFLOW2:PTRMAP_OVERFLOW1);
        FUNC6(pBt, pgnoOvfl, eType, pgnoPtrmap, &rc);
        if( rc ){
          FUNC10(pOvfl);
        }
      }
#endif
      if( rc ){
        FUNC10(pToRelease);
        return rc;
      }

      /* If pToRelease is not zero than pPrior points into the data area
      ** of pToRelease.  Make sure pToRelease is still writeable. */
      FUNC3( pToRelease==0 || FUNC11(pToRelease->pDbPage) );

      /* If pPrior is part of the data area of pPage, then make sure pPage
      ** is still writeable */
      FUNC3( pPrior<pPage->aData || pPrior>=&pPage->aData[pBt->pageSize]
            || FUNC11(pPage->pDbPage) );

      FUNC7(pPrior, pgnoOvfl);
      FUNC10(pToRelease);
      pToRelease = pOvfl;
      pPrior = pOvfl->aData;
      FUNC7(pPrior, 0);
      pPayload = &pOvfl->aData[4];
      spaceLeft = pBt->usableSize - 4;
    }
  }
  FUNC10(pToRelease);
  return SQLITE_OK;
}