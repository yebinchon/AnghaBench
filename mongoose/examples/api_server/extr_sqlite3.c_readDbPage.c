
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int i64 ;
struct TYPE_8__ {int pageSize; scalar_t__ eState; int tempFile; int nRead; scalar_t__ dbFileVers; int fd; int pWal; } ;
struct TYPE_7__ {int pgno; scalar_t__ pData; TYPE_2__* pPager; } ;
typedef int Pgno ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ Pager ;


 int CODEC1 (TYPE_2__*,scalar_t__,int,int,int) ;
 int IOTRACE (char*) ;
 int MEMDB ;
 scalar_t__ NEVER (int) ;
 int PAGERID (TYPE_2__*) ;
 int PAGERTRACE (char*) ;
 int PAGER_INCR (int ) ;
 scalar_t__ PAGER_READER ;
 int SQLITE_IOERR_SHORT_READ ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int isOpen (int ) ;
 int memcpy (scalar_t__*,int *,int) ;
 int memset (scalar_t__,int,int) ;
 int pager_pagehash (TYPE_1__*) ;
 int sqlite3OsRead (int ,scalar_t__,int,int) ;
 int sqlite3WalReadFrame (int ,int ,int,scalar_t__) ;
 int sqlite3_pager_readdb_count ;

__attribute__((used)) static int readDbPage(PgHdr *pPg, u32 iFrame){
  Pager *pPager = pPg->pPager;
  Pgno pgno = pPg->pgno;
  int rc = SQLITE_OK;
  int pgsz = pPager->pageSize;

  assert( pPager->eState>=PAGER_READER && !MEMDB );
  assert( isOpen(pPager->fd) );

  if( NEVER(!isOpen(pPager->fd)) ){
    assert( pPager->tempFile );
    memset(pPg->pData, 0, pPager->pageSize);
    return SQLITE_OK;
  }


  if( iFrame ){

    rc = sqlite3WalReadFrame(pPager->pWal, iFrame, pgsz, pPg->pData);
  }else

  {
    i64 iOffset = (pgno-1)*(i64)pPager->pageSize;
    rc = sqlite3OsRead(pPager->fd, pPg->pData, pgsz, iOffset);
    if( rc==SQLITE_IOERR_SHORT_READ ){
      rc = SQLITE_OK;
    }
  }

  if( pgno==1 ){
    if( rc ){
      memset(pPager->dbFileVers, 0xff, sizeof(pPager->dbFileVers));
    }else{
      u8 *dbFileVers = &((u8*)pPg->pData)[24];
      memcpy(&pPager->dbFileVers, dbFileVers, sizeof(pPager->dbFileVers));
    }
  }
  CODEC1(pPager, pPg->pData, pgno, 3, rc = SQLITE_NOMEM);

  PAGER_INCR(sqlite3_pager_readdb_count);
  PAGER_INCR(pPager->nRead);
  IOTRACE(("PGIN %p %d\n", pPager, pgno));
  PAGERTRACE(("FETCH %d page %d hash(%08x)\n",
               PAGERID(pPager), pgno, pager_pagehash(pPg)));

  return rc;
}
