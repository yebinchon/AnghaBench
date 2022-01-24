#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  size_t u16 ;
struct TYPE_9__ {int pageSize; int usableSize; int /*<<< orphan*/  mutex; } ;
struct TYPE_8__ {scalar_t__ pgno; scalar_t__ aData; int isInit; size_t hdrOffset; size_t maskPage; size_t cellOffset; int leaf; size_t* aDataEnd; size_t* aCellIdx; int nCell; size_t nFree; scalar_t__ nOverflow; TYPE_2__* pBt; int /*<<< orphan*/  pDbPage; } ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,size_t*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,size_t) ; 
 void* FUNC4 (size_t*) ; 
 int FUNC5 (size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(MemPage *pPage){

  FUNC1( pPage->pBt!=0 );
  FUNC1( FUNC9(pPage->pBt->mutex) );
  FUNC1( pPage->pgno==FUNC8(pPage->pDbPage) );
  FUNC1( pPage == FUNC7(pPage->pDbPage) );
  FUNC1( pPage->aData == FUNC6(pPage->pDbPage) );

  if( !pPage->isInit ){
    u16 pc;            /* Address of a freeblock within pPage->aData[] */
    u8 hdr;            /* Offset to beginning of page header */
    u8 *data;          /* Equal to pPage->aData */
    BtShared *pBt;        /* The main btree structure */
    int usableSize;    /* Amount of usable space on each page */
    u16 cellOffset;    /* Offset from start of page to first cell pointer */
    int nFree;         /* Number of unused bytes on the page */
    int top;           /* First byte of the cell content area */
    int iCellFirst;    /* First allowable cell or freeblock offset */
    int iCellLast;     /* Last possible cell or freeblock offset */

    pBt = pPage->pBt;

    hdr = pPage->hdrOffset;
    data = pPage->aData;
    if( FUNC3(pPage, data[hdr]) ) return SQLITE_CORRUPT_BKPT;
    FUNC1( pBt->pageSize>=512 && pBt->pageSize<=65536 );
    pPage->maskPage = (u16)(pBt->pageSize - 1);
    pPage->nOverflow = 0;
    usableSize = pBt->usableSize;
    pPage->cellOffset = cellOffset = hdr + 12 - 4*pPage->leaf;
    pPage->aDataEnd = &data[usableSize];
    pPage->aCellIdx = &data[cellOffset];
    top = FUNC5(&data[hdr+5]);
    pPage->nCell = FUNC4(&data[hdr+3]);
    if( pPage->nCell>FUNC0(pBt) ){
      /* To many cells for a single page.  The page must be corrupt */
      return SQLITE_CORRUPT_BKPT;
    }
    FUNC10( pPage->nCell==FUNC0(pBt) );

    /* A malformed database page might cause us to read past the end
    ** of page when parsing a cell.  
    **
    ** The following block of code checks early to see if a cell extends
    ** past the end of a page boundary and causes SQLITE_CORRUPT to be 
    ** returned if it does.
    */
    iCellFirst = cellOffset + 2*pPage->nCell;
    iCellLast = usableSize - 4;
#if defined(SQLITE_ENABLE_OVERSIZE_CELL_CHECK)
    {
      int i;            /* Index into the cell pointer array */
      int sz;           /* Size of a cell */

      if( !pPage->leaf ) iCellLast--;
      for(i=0; i<pPage->nCell; i++){
        pc = get2byte(&data[cellOffset+i*2]);
        testcase( pc==iCellFirst );
        testcase( pc==iCellLast );
        if( pc<iCellFirst || pc>iCellLast ){
          return SQLITE_CORRUPT_BKPT;
        }
        sz = cellSizePtr(pPage, &data[pc]);
        testcase( pc+sz==usableSize );
        if( pc+sz>usableSize ){
          return SQLITE_CORRUPT_BKPT;
        }
      }
      if( !pPage->leaf ) iCellLast++;
    }  
#endif

    /* Compute the total free space on the page */
    pc = FUNC4(&data[hdr+1]);
    nFree = data[hdr+7] + top;
    while( pc>0 ){
      u16 next, size;
      if( pc<iCellFirst || pc>iCellLast ){
        /* Start of free block is off the page */
        return SQLITE_CORRUPT_BKPT; 
      }
      next = FUNC4(&data[pc]);
      size = FUNC4(&data[pc+2]);
      if( (next>0 && next<=pc+size+3) || pc+size>usableSize ){
        /* Free blocks must be in ascending order. And the last byte of
        ** the free-block must lie on the database page.  */
        return SQLITE_CORRUPT_BKPT; 
      }
      nFree = nFree + size;
      pc = next;
    }

    /* At this point, nFree contains the sum of the offset to the start
    ** of the cell-content area plus the number of free bytes within
    ** the cell-content area. If this is greater than the usable-size
    ** of the page, then the page must be corrupted. This check also
    ** serves to verify that the offset to the start of the cell-content
    ** area, according to the page header, lies within the page.
    */
    if( nFree>usableSize ){
      return SQLITE_CORRUPT_BKPT; 
    }
    pPage->nFree = (u16)(nFree - iCellFirst);
    pPage->isInit = 1;
  }
  return SQLITE_OK;
}