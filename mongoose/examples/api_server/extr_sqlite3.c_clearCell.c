
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_16__ {int usableSize; int mutex; } ;
struct TYPE_15__ {int iOverflow; int nPayload; int nLocal; } ;
struct TYPE_14__ {unsigned char* aData; int maskPage; int pDbPage; TYPE_3__* pBt; } ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ CellInfo ;
typedef TYPE_3__ BtShared ;


 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 TYPE_1__* btreePageLookup (TYPE_3__*,int) ;
 int btreePagecount (TYPE_3__*) ;
 int btreeParseCellPtr (TYPE_1__*,unsigned char*,TYPE_2__*) ;
 int freePage2 (TYPE_3__*,TYPE_1__*,int) ;
 int get4byte (unsigned char*) ;
 int getOverflowPage (TYPE_3__*,int,TYPE_1__**,int*) ;
 int sqlite3PagerPageRefcount (int ) ;
 int sqlite3PagerUnref (int ) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static int clearCell(MemPage *pPage, unsigned char *pCell){
  BtShared *pBt = pPage->pBt;
  CellInfo info;
  Pgno ovflPgno;
  int rc;
  int nOvfl;
  u32 ovflPageSize;

  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  btreeParseCellPtr(pPage, pCell, &info);
  if( info.iOverflow==0 ){
    return SQLITE_OK;
  }
  if( pCell+info.iOverflow+3 > pPage->aData+pPage->maskPage ){
    return SQLITE_CORRUPT_BKPT;
  }
  ovflPgno = get4byte(&pCell[info.iOverflow]);
  assert( pBt->usableSize > 4 );
  ovflPageSize = pBt->usableSize - 4;
  nOvfl = (info.nPayload - info.nLocal + ovflPageSize - 1)/ovflPageSize;
  assert( ovflPgno==0 || nOvfl>0 );
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
