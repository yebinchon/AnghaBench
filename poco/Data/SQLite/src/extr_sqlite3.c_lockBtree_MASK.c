#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  void* u16 ;
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {int btsFlags; scalar_t__ pageSize; int usableSize; int autoVacuum; int incrVacuum; int maxLocal; scalar_t__ maxLeaf; int max1bytePayload; TYPE_1__* pPage1; scalar_t__ nPage; void* minLeaf; void* minLocal; TYPE_3__* db; int /*<<< orphan*/  pPager; int /*<<< orphan*/  mutex; } ;
struct TYPE_11__ {int* aData; } ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 int BTS_NO_WAL ; 
 int BTS_PAGESIZE_FIXED ; 
 int BTS_READ_ONLY ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int SQLITE_CORRUPT_BKPT ; 
 scalar_t__ SQLITE_DEFAULT_SYNCHRONOUS ; 
 scalar_t__ SQLITE_DEFAULT_WAL_SYNCHRONOUS ; 
 scalar_t__ SQLITE_MAX_PAGE_SIZE ; 
 int SQLITE_NOTADB ; 
 int SQLITE_OK ; 
 int SQLITE_ResetDatabase ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,int,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int*) ; 
 scalar_t__ FUNC5 (int*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 char* zMagicHeader ; 

__attribute__((used)) static int FUNC14(BtShared *pBt){
  int rc;              /* Result code from subfunctions */
  MemPage *pPage1;     /* Page 1 of the database file */
  u32 nPage;           /* Number of pages in the database */
  u32 nPageFile = 0;   /* Number of pages in the database file */
  u32 nPageHeader;     /* Number of pages in the database according to hdr */

  FUNC1( FUNC13(pBt->mutex) );
  FUNC1( pBt->pPage1==0 );
  rc = FUNC11(pBt->pPager);
  if( rc!=SQLITE_OK ) return rc;
  rc = FUNC2(pBt, 1, &pPage1, 0);
  if( rc!=SQLITE_OK ) return rc;

  /* Do some checking to help insure the file we opened really is
  ** a valid database file. 
  */
  nPage = nPageHeader = FUNC4(28+(u8*)pPage1->aData);
  FUNC9(pBt->pPager, (int*)&nPageFile);
  if( nPage==0 || FUNC5(24+(u8*)pPage1->aData, 92+(u8*)pPage1->aData,4)!=0 ){
    nPage = nPageFile;
  }
  if( (pBt->db->flags & SQLITE_ResetDatabase)!=0 ){
    nPage = 0;
  }
  if( nPage>0 ){
    u32 pageSize;
    u32 usableSize;
    u8 *page1 = pPage1->aData;
    rc = SQLITE_NOTADB;
    /* EVIDENCE-OF: R-43737-39999 Every valid SQLite database file begins
    ** with the following 16 bytes (in hex): 53 51 4c 69 74 65 20 66 6f 72 6d
    ** 61 74 20 33 00. */
    if( FUNC5(page1, zMagicHeader, 16)!=0 ){
      goto page1_init_failed;
    }

#ifdef SQLITE_OMIT_WAL
    if( page1[18]>1 ){
      pBt->btsFlags |= BTS_READ_ONLY;
    }
    if( page1[19]>1 ){
      goto page1_init_failed;
    }
#else
    if( page1[18]>2 ){
      pBt->btsFlags |= BTS_READ_ONLY;
    }
    if( page1[19]>2 ){
      goto page1_init_failed;
    }

    /* If the write version is set to 2, this database should be accessed
    ** in WAL mode. If the log is not already open, open it now. Then 
    ** return SQLITE_OK and return without populating BtShared.pPage1.
    ** The caller detects this and calls this function again. This is
    ** required as the version of page 1 currently in the page1 buffer
    ** may not be the latest version - there may be a newer one in the log
    ** file.
    */
    if( page1[19]==2 && (pBt->btsFlags & BTS_NO_WAL)==0 ){
      int isOpen = 0;
      rc = FUNC8(pBt->pPager, &isOpen);
      if( rc!=SQLITE_OK ){
        goto page1_init_failed;
      }else{
        FUNC7(pBt, SQLITE_DEFAULT_WAL_SYNCHRONOUS+1);
        if( isOpen==0 ){
          FUNC6(pPage1);
          return SQLITE_OK;
        }
      }
      rc = SQLITE_NOTADB;
    }else{
      FUNC7(pBt, SQLITE_DEFAULT_SYNCHRONOUS+1);
    }
#endif

    /* EVIDENCE-OF: R-15465-20813 The maximum and minimum embedded payload
    ** fractions and the leaf payload fraction values must be 64, 32, and 32.
    **
    ** The original design allowed these amounts to vary, but as of
    ** version 3.6.0, we require them to be fixed.
    */
    if( FUNC5(&page1[21], "\100\040\040",3)!=0 ){
      goto page1_init_failed;
    }
    /* EVIDENCE-OF: R-51873-39618 The page size for a database file is
    ** determined by the 2-byte integer located at an offset of 16 bytes from
    ** the beginning of the database file. */
    pageSize = (page1[16]<<8) | (page1[17]<<16);
    /* EVIDENCE-OF: R-25008-21688 The size of a page is a power of two
    ** between 512 and 65536 inclusive. */
    if( ((pageSize-1)&pageSize)!=0
     || pageSize>SQLITE_MAX_PAGE_SIZE 
     || pageSize<=256 
    ){
      goto page1_init_failed;
    }
    pBt->btsFlags |= BTS_PAGESIZE_FIXED;
    FUNC1( (pageSize & 7)==0 );
    /* EVIDENCE-OF: R-59310-51205 The "reserved space" size in the 1-byte
    ** integer at offset 20 is the number of bytes of space at the end of
    ** each page to reserve for extensions. 
    **
    ** EVIDENCE-OF: R-37497-42412 The size of the reserved region is
    ** determined by the one-byte unsigned integer found at an offset of 20
    ** into the database file header. */
    usableSize = pageSize - page1[20];
    if( (u32)pageSize!=pBt->pageSize ){
      /* After reading the first page of the database assuming a page size
      ** of BtShared.pageSize, we have discovered that the page-size is
      ** actually pageSize. Unlock the database, leave pBt->pPage1 at
      ** zero and return SQLITE_OK. The caller will call this function
      ** again with the correct page-size.
      */
      FUNC6(pPage1);
      pBt->usableSize = usableSize;
      pBt->pageSize = pageSize;
      FUNC3(pBt);
      rc = FUNC10(pBt->pPager, &pBt->pageSize,
                                   pageSize-usableSize);
      return rc;
    }
    if( FUNC12(pBt->db)==0 && nPage>nPageFile ){
      rc = SQLITE_CORRUPT_BKPT;
      goto page1_init_failed;
    }
    /* EVIDENCE-OF: R-28312-64704 However, the usable size is not allowed to
    ** be less than 480. In other words, if the page size is 512, then the
    ** reserved space size cannot exceed 32. */
    if( usableSize<480 ){
      goto page1_init_failed;
    }
    pBt->pageSize = pageSize;
    pBt->usableSize = usableSize;
#ifndef SQLITE_OMIT_AUTOVACUUM
    pBt->autoVacuum = (FUNC4(&page1[36 + 4*4])?1:0);
    pBt->incrVacuum = (FUNC4(&page1[36 + 7*4])?1:0);
#endif
  }

  /* maxLocal is the maximum amount of payload to store locally for
  ** a cell.  Make sure it is small enough so that at least minFanout
  ** cells can will fit on one page.  We assume a 10-byte page header.
  ** Besides the payload, the cell must store:
  **     2-byte pointer to the cell
  **     4-byte child pointer
  **     9-byte nKey value
  **     4-byte nData value
  **     4-byte overflow page pointer
  ** So a cell consists of a 2-byte pointer, a header which is as much as
  ** 17 bytes long, 0 to N bytes of payload, and an optional 4 byte overflow
  ** page pointer.
  */
  pBt->maxLocal = (u16)((pBt->usableSize-12)*64/255 - 23);
  pBt->minLocal = (u16)((pBt->usableSize-12)*32/255 - 23);
  pBt->maxLeaf = (u16)(pBt->usableSize - 35);
  pBt->minLeaf = (u16)((pBt->usableSize-12)*32/255 - 23);
  if( pBt->maxLocal>127 ){
    pBt->max1bytePayload = 127;
  }else{
    pBt->max1bytePayload = (u8)pBt->maxLocal;
  }
  FUNC1( pBt->maxLeaf + 23 <= FUNC0(pBt) );
  pBt->pPage1 = pPage1;
  pBt->nPage = nPage;
  return SQLITE_OK;

page1_init_failed:
  FUNC6(pPage1);
  pBt->pPage1 = 0;
  return rc;
}