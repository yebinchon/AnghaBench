#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {scalar_t__ pPayload; int nLocal; } ;
struct TYPE_16__ {TYPE_1__ info; TYPE_2__* pPage; } ;
struct TYPE_15__ {int usableSize; } ;
struct TYPE_14__ {int nData; int nZero; } ;
struct TYPE_13__ {scalar_t__ aDataEnd; scalar_t__ aData; int /*<<< orphan*/  pDbPage; TYPE_4__* pBt; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_2__ MemPage ;
typedef  TYPE_3__ BtreePayload ;
typedef  TYPE_4__ BtShared ;
typedef  TYPE_5__ BtCursor ;

/* Variables and functions */
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,scalar_t__,TYPE_3__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(BtCursor *pCur, const BtreePayload *pX){
  int iOffset;                        /* Next byte of pX->pData to write */
  int nTotal = pX->nData + pX->nZero; /* Total bytes of to write */
  int rc;                             /* Return code */
  MemPage *pPage = pCur->pPage;       /* Page being written */
  BtShared *pBt;                      /* Btree */
  Pgno ovflPgno;                      /* Next overflow page to write */
  u32 ovflPageSize;                   /* Size to write on overflow page */

  if( pCur->info.pPayload + pCur->info.nLocal > pPage->aDataEnd ){
    return SQLITE_CORRUPT_BKPT;
  }
  /* Overwrite the local portion first */
  rc = FUNC2(pPage, pCur->info.pPayload, pX,
                             0, pCur->info.nLocal);
  if( rc ) return rc;
  if( pCur->info.nLocal==nTotal ) return SQLITE_OK;

  /* Now overwrite the overflow pages */
  iOffset = pCur->info.nLocal;
  FUNC0( nTotal>=0 );
  FUNC0( iOffset>=0 );
  ovflPgno = FUNC3(pCur->info.pPayload + iOffset);
  pBt = pPage->pBt;
  ovflPageSize = pBt->usableSize - 4;
  do{
    rc = FUNC1(pBt, ovflPgno, &pPage, 0);
    if( rc ) return rc;
    if( FUNC4(pPage->pDbPage)!=1 ){
      rc = SQLITE_CORRUPT_BKPT;
    }else{
      if( iOffset+ovflPageSize<(u32)nTotal ){
        ovflPgno = FUNC3(pPage->aData);
      }else{
        ovflPageSize = nTotal - iOffset;
      }
      rc = FUNC2(pPage, pPage->aData+4, pX,
                                 iOffset, ovflPageSize);
    }
    FUNC5(pPage->pDbPage);
    if( rc ) return rc;
    iOffset += ovflPageSize;
  }while( iOffset<nTotal );
  return SQLITE_OK;    
}