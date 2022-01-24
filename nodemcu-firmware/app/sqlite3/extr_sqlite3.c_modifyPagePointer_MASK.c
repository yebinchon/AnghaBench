#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_11__ {scalar_t__ nLocal; scalar_t__ nPayload; int nSize; } ;
struct TYPE_10__ {scalar_t__* aData; int nCell; int hdrOffset; TYPE_1__* pBt; int /*<<< orphan*/  (* xParseCell ) (TYPE_2__*,scalar_t__*,TYPE_3__*) ;int /*<<< orphan*/  pDbPage; } ;
struct TYPE_9__ {int usableSize; int /*<<< orphan*/  mutex; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_2__ MemPage ;
typedef  TYPE_3__ CellInfo ;

/* Variables and functions */
 scalar_t__ PTRMAP_BTREE ; 
 scalar_t__ PTRMAP_OVERFLOW1 ; 
 scalar_t__ PTRMAP_OVERFLOW2 ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__* FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC8(MemPage *pPage, Pgno iFrom, Pgno iTo, u8 eType){
  FUNC0( FUNC6(pPage->pBt->mutex) );
  FUNC0( FUNC5(pPage->pDbPage) );
  if( eType==PTRMAP_OVERFLOW2 ){
    /* The pointer is always the first 4 bytes of the page in this case.  */
    if( FUNC3(pPage->aData)!=iFrom ){
      return SQLITE_CORRUPT_BKPT;
    }
    FUNC4(pPage->aData, iTo);
  }else{
    int i;
    int nCell;
    int rc;

    rc = FUNC1(pPage);
    if( rc ) return rc;
    nCell = pPage->nCell;

    for(i=0; i<nCell; i++){
      u8 *pCell = FUNC2(pPage, i);
      if( eType==PTRMAP_OVERFLOW1 ){
        CellInfo info;
        pPage->xParseCell(pPage, pCell, &info);
        if( info.nLocal<info.nPayload ){
          if( pCell+info.nSize > pPage->aData+pPage->pBt->usableSize ){
            return SQLITE_CORRUPT_BKPT;
          }
          if( iFrom==FUNC3(pCell+info.nSize-4) ){
            FUNC4(pCell+info.nSize-4, iTo);
            break;
          }
        }
      }else{
        if( FUNC3(pCell)==iFrom ){
          FUNC4(pCell, iTo);
          break;
        }
      }
    }

    if( i==nCell ){
      if( eType!=PTRMAP_BTREE ||
          FUNC3(&pPage->aData[pPage->hdrOffset+8])!=iFrom ){
        return SQLITE_CORRUPT_BKPT;
      }
      FUNC4(&pPage->aData[pPage->hdrOffset+8], iTo);
    }
  }
  return SQLITE_OK;
}