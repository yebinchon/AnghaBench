#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {scalar_t__ pgno; int* aData; int isInit; int hdrOffset; int childPtrSize; int nCell; int /*<<< orphan*/  nFree; TYPE_1__* pBt; int /*<<< orphan*/  pDbPage; } ;
struct TYPE_6__ {scalar_t__ db; int usableSize; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ MemPage ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int*) ; 
 int FUNC3 (int*) ; 
 int* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(MemPage *pPage){
  int pc;            /* Address of a freeblock within pPage->aData[] */
  u8 hdr;            /* Offset to beginning of page header */
  u8 *data;          /* Equal to pPage->aData */
  int usableSize;    /* Amount of usable space on each page */
  int nFree;         /* Number of unused bytes on the page */
  int top;           /* First byte of the cell content area */
  int iCellFirst;    /* First allowable cell or freeblock offset */
  int iCellLast;     /* Last possible cell or freeblock offset */

  FUNC1( pPage->pBt!=0 );
  FUNC1( pPage->pBt->db!=0 );
  FUNC1( FUNC7(pPage->pBt->mutex) );
  FUNC1( pPage->pgno==FUNC6(pPage->pDbPage) );
  FUNC1( pPage == FUNC5(pPage->pDbPage) );
  FUNC1( pPage->aData == FUNC4(pPage->pDbPage) );
  FUNC1( pPage->isInit==1 );
  FUNC1( pPage->nFree<0 );

  usableSize = pPage->pBt->usableSize;
  hdr = pPage->hdrOffset;
  data = pPage->aData;
  /* EVIDENCE-OF: R-58015-48175 The two-byte integer at offset 5 designates
  ** the start of the cell content area. A zero value for this integer is
  ** interpreted as 65536. */
  top = FUNC3(&data[hdr+5]);
  iCellFirst = hdr + 8 + pPage->childPtrSize + 2*pPage->nCell;
  iCellLast = usableSize - 4;

  /* Compute the total free space on the page
  ** EVIDENCE-OF: R-23588-34450 The two-byte integer at offset 1 gives the
  ** start of the first freeblock on the page, or is zero if there are no
  ** freeblocks. */
  pc = FUNC2(&data[hdr+1]);
  nFree = data[hdr+7] + top;  /* Init nFree to non-freeblock free space */
  if( pc>0 ){
    u32 next, size;
    if( pc<iCellFirst ){
      /* EVIDENCE-OF: R-55530-52930 In a well-formed b-tree page, there will
      ** always be at least one cell before the first freeblock.
      */
      return FUNC0(pPage); 
    }
    while( 1 ){
      if( pc>iCellLast ){
        /* Freeblock off the end of the page */
        return FUNC0(pPage);
      }
      next = FUNC2(&data[pc]);
      size = FUNC2(&data[pc+2]);
      nFree = nFree + size;
      if( next<=pc+size+3 ) break;
      pc = next;
    }
    if( next>0 ){
      /* Freeblock not in ascending order */
      return FUNC0(pPage);
    }
    if( pc+size>(unsigned int)usableSize ){
      /* Last freeblock extends past page end */
      return FUNC0(pPage);
    }
  }

  /* At this point, nFree contains the sum of the offset to the start
  ** of the cell-content area plus the number of free bytes within
  ** the cell-content area. If this is greater than the usable-size
  ** of the page, then the page must be corrupted. This check also
  ** serves to verify that the offset to the start of the cell-content
  ** area, according to the page header, lies within the page.
  */
  if( nFree>usableSize || nFree<iCellFirst ){
    return FUNC0(pPage);
  }
  pPage->nFree = (u16)(nFree - iCellFirst);
  return SQLITE_OK;
}