
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ usableSize; int pPager; int mutex; } ;
typedef int Pgno ;
typedef int DbPage ;
typedef TYPE_1__ BtShared ;


 int PTRMAP_PAGENO (TYPE_1__*,int ) ;
 int PTRMAP_PTROFFSET (int,int ) ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_CORRUPT_PGNO (int) ;
 int SQLITE_OK ;
 int assert (int) ;
 int get4byte (int*) ;
 int sqlite3PagerGet (int ,int,int **,int ) ;
 scalar_t__ sqlite3PagerGetData (int *) ;
 int sqlite3PagerUnref (int *) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static int ptrmapGet(BtShared *pBt, Pgno key, u8 *pEType, Pgno *pPgno){
  DbPage *pDbPage;
  int iPtrmap;
  u8 *pPtrmap;
  int offset;
  int rc;

  assert( sqlite3_mutex_held(pBt->mutex) );

  iPtrmap = PTRMAP_PAGENO(pBt, key);
  rc = sqlite3PagerGet(pBt->pPager, iPtrmap, &pDbPage, 0);
  if( rc!=0 ){
    return rc;
  }
  pPtrmap = (u8 *)sqlite3PagerGetData(pDbPage);

  offset = PTRMAP_PTROFFSET(iPtrmap, key);
  if( offset<0 ){
    sqlite3PagerUnref(pDbPage);
    return SQLITE_CORRUPT_BKPT;
  }
  assert( offset <= (int)pBt->usableSize-5 );
  assert( pEType!=0 );
  *pEType = pPtrmap[offset];
  if( pPgno ) *pPgno = get4byte(&pPtrmap[offset+1]);

  sqlite3PagerUnref(pDbPage);
  if( *pEType<1 || *pEType>5 ) return SQLITE_CORRUPT_PGNO(iPtrmap);
  return SQLITE_OK;
}
