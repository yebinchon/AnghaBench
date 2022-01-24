#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int i64 ;
struct TYPE_8__ {int pageSize; scalar_t__ eState; int /*<<< orphan*/  nRead; int /*<<< orphan*/  dbFileVers; int /*<<< orphan*/  fd; int /*<<< orphan*/  pWal; } ;
struct TYPE_7__ {int pgno; scalar_t__ pData; TYPE_2__* pPager; } ;
typedef  int Pgno ;
typedef  TYPE_1__ PgHdr ;
typedef  TYPE_2__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MEMDB ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGER_READER ; 
 int SQLITE_IOERR_SHORT_READ ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  sqlite3_pager_readdb_count ; 

__attribute__((used)) static int FUNC12(PgHdr *pPg, u32 iFrame){
  Pager *pPager = pPg->pPager; /* Pager object associated with page pPg */
  Pgno pgno = pPg->pgno;       /* Page number to read */
  int rc = SQLITE_OK;          /* Return code */
  int pgsz = pPager->pageSize; /* Number of bytes to read */

  FUNC5( pPager->eState>=PAGER_READER && !MEMDB );
  FUNC5( FUNC6(pPager->fd) );

#ifndef SQLITE_OMIT_WAL
  if( iFrame ){
    /* Try to pull the page from the write-ahead log. */
    rc = FUNC11(pPager->pWal, iFrame, pgsz, pPg->pData);
  }else
#endif
  {
    i64 iOffset = (pgno-1)*(i64)pPager->pageSize;
    rc = FUNC10(pPager->fd, pPg->pData, pgsz, iOffset);
    if( rc==SQLITE_IOERR_SHORT_READ ){
      rc = SQLITE_OK;
    }
  }

  if( pgno==1 ){
    if( rc ){
      /* If the read is unsuccessful, set the dbFileVers[] to something
      ** that will never be a valid file version.  dbFileVers[] is a copy
      ** of bytes 24..39 of the database.  Bytes 28..31 should always be
      ** zero or the size of the database in page. Bytes 32..35 and 35..39
      ** should be page numbers which are never 0xffffffff.  So filling
      ** pPager->dbFileVers[] with all 0xff bytes should suffice.
      **
      ** For an encrypted database, the situation is more complex:  bytes
      ** 24..39 of the database are white noise.  But the probability of
      ** white noise equaling 16 bytes of 0xff is vanishingly small so
      ** we should still be ok.
      */
      FUNC8(pPager->dbFileVers, 0xff, sizeof(pPager->dbFileVers));
    }else{
      u8 *dbFileVers = &((u8*)pPg->pData)[24];
      FUNC7(&pPager->dbFileVers, dbFileVers, sizeof(pPager->dbFileVers));
    }
  }
  FUNC0(pPager, pPg->pData, pgno, 3, rc = SQLITE_NOMEM_BKPT);

  FUNC4(sqlite3_pager_readdb_count);
  FUNC4(pPager->nRead);
  FUNC1(("PGIN %p %d\n", pPager, pgno));
  FUNC3(("FETCH %d page %d hash(%08x)\n",
               FUNC2(pPager), pgno, FUNC9(pPg)));

  return rc;
}