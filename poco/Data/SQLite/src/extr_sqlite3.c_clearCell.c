
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_18__ {int usableSize; int mutex; } ;
struct TYPE_17__ {int nLocal; int nPayload; int nSize; } ;
struct TYPE_16__ {unsigned char* aDataEnd; int pDbPage; TYPE_3__* pBt; int (* xParseCell ) (TYPE_1__*,unsigned char*,TYPE_2__*) ;} ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ CellInfo ;
typedef TYPE_3__ BtShared ;


 scalar_t__ CORRUPT_DB ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_CORRUPT_PAGE (TYPE_1__*) ;
 int SQLITE_OK ;
 int assert (int) ;
 TYPE_1__* btreePageLookup (TYPE_3__*,int) ;
 int btreePagecount (TYPE_3__*) ;
 int freePage2 (TYPE_3__*,TYPE_1__*,int) ;
 int get4byte (unsigned char*) ;
 int getOverflowPage (TYPE_3__*,int,TYPE_1__**,int*) ;
 int sqlite3PagerPageRefcount (int ) ;
 int sqlite3PagerUnref (int ) ;
 int sqlite3_mutex_held (int ) ;
 int stub1 (TYPE_1__*,unsigned char*,TYPE_2__*) ;
 int testcase (int) ;

__attribute__((used)) static int clearCell(
  MemPage *pPage,
  unsigned char *pCell,
  CellInfo *pInfo
){
  BtShared *pBt;
  Pgno ovflPgno;
  int rc;
  int nOvfl;
  u32 ovflPageSize;

  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  pPage->xParseCell(pPage, pCell, pInfo);
  if( pInfo->nLocal==pInfo->nPayload ){
    return SQLITE_OK;
  }
  testcase( pCell + pInfo->nSize == pPage->aDataEnd );
  testcase( pCell + (pInfo->nSize-1) == pPage->aDataEnd );
  if( pCell + pInfo->nSize > pPage->aDataEnd ){

    return SQLITE_CORRUPT_PAGE(pPage);
  }
  ovflPgno = get4byte(pCell + pInfo->nSize - 4);
  pBt = pPage->pBt;
  assert( pBt->usableSize > 4 );
  ovflPageSize = pBt->usableSize - 4;
  nOvfl = (pInfo->nPayload - pInfo->nLocal + ovflPageSize - 1)/ovflPageSize;
  assert( nOvfl>0 ||
    (CORRUPT_DB && (pInfo->nPayload + ovflPageSize)<ovflPageSize)
  );
  while( nOvfl-- ){
    Pgno iNext = 0;
    MemPage *pOvfl = 0;
    if( ovflPgno<2 || ovflPgno>btreePagecount(pBt) ){



      return SQLITE_CORRUPT_BKPT;
    }
    if( nOvfl ){
      rc = getOverflowPage(pBt, ovflPgno, &pOvfl, &iNext);
      if( rc ) return rc;
    }

    if( ( pOvfl || ((pOvfl = btreePageLookup(pBt, ovflPgno))!=0) )
     && sqlite3PagerPageRefcount(pOvfl->pDbPage)!=1
    ){
      rc = SQLITE_CORRUPT_BKPT;
    }else{
      rc = freePage2(pBt, pOvfl, ovflPgno);
    }

    if( pOvfl ){
      sqlite3PagerUnref(pOvfl->pDbPage);
    }
    if( rc ) return rc;
    ovflPgno = iNext;
  }
  return SQLITE_OK;
}
