
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int i64 ;
struct TYPE_9__ {scalar_t__ eState; scalar_t__ xCodec; int hasHeldSharedLock; int errCode; int pageSize; int fd; scalar_t__ tempFile; int pWal; } ;
typedef int Pgno ;
typedef int PgHdr ;
typedef TYPE_1__ Pager ;
typedef int DbPage ;


 int PAGER_GET_READONLY ;
 scalar_t__ PAGER_READER ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int USEFETCH (TYPE_1__*) ;
 int assert (int) ;
 int assert_pager_state (TYPE_1__*) ;
 int getPageNormal (TYPE_1__*,int,int **,int) ;
 int pagerAcquireMapPage (TYPE_1__*,int,void*,int **) ;
 scalar_t__ pagerUseWal (TYPE_1__*) ;
 int sqlite3OsFetch (int ,int,int,void**) ;
 int sqlite3OsUnfetch (int ,int,void*) ;
 int * sqlite3PagerLookup (TYPE_1__*,int) ;
 int sqlite3WalFindFrame (int ,int,scalar_t__*) ;

__attribute__((used)) static int getPageMMap(
  Pager *pPager,
  Pgno pgno,
  DbPage **ppPage,
  int flags
){
  int rc = SQLITE_OK;
  PgHdr *pPg = 0;
  u32 iFrame = 0;





  const int bMmapOk = (pgno>1
   && (pPager->eState==PAGER_READER || (flags & PAGER_GET_READONLY))
  );

  assert( USEFETCH(pPager) );
  if( pgno<=1 && pgno==0 ){
    return SQLITE_CORRUPT_BKPT;
  }
  assert( pPager->eState>=PAGER_READER );
  assert( assert_pager_state(pPager) );
  assert( pPager->hasHeldSharedLock==1 );
  assert( pPager->errCode==SQLITE_OK );

  if( bMmapOk && pagerUseWal(pPager) ){
    rc = sqlite3WalFindFrame(pPager->pWal, pgno, &iFrame);
    if( rc!=SQLITE_OK ){
      *ppPage = 0;
      return rc;
    }
  }
  if( bMmapOk && iFrame==0 ){
    void *pData = 0;
    rc = sqlite3OsFetch(pPager->fd,
        (i64)(pgno-1) * pPager->pageSize, pPager->pageSize, &pData
    );
    if( rc==SQLITE_OK && pData ){
      if( pPager->eState>PAGER_READER || pPager->tempFile ){
        pPg = sqlite3PagerLookup(pPager, pgno);
      }
      if( pPg==0 ){
        rc = pagerAcquireMapPage(pPager, pgno, pData, &pPg);
     }else{
        sqlite3OsUnfetch(pPager->fd, (i64)(pgno-1)*pPager->pageSize, pData);
      }
      if( pPg ){
        assert( rc==SQLITE_OK );
        *ppPage = pPg;
        return SQLITE_OK;
      }
    }
    if( rc!=SQLITE_OK ){
      *ppPage = 0;
      return rc;
    }
  }
  return getPageNormal(pPager, pgno, ppPage, flags);
}
