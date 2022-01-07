
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mutex; } ;
typedef scalar_t__ Pgno ;
typedef int MemPage ;
typedef TYPE_1__ BtShared ;


 int SQLITE_CORRUPT ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int btreeGetPage (TYPE_1__*,scalar_t__,int **,int ,int) ;
 int btreeInitPage (int *) ;
 scalar_t__ btreePagecount (TYPE_1__*) ;
 int releasePage (int *) ;
 int sqlite3_mutex_held (int ) ;
 int testcase (int) ;

__attribute__((used)) static int getAndInitPage(
  BtShared *pBt,
  Pgno pgno,
  MemPage **ppPage,
  int bReadonly
){
  int rc;
  assert( sqlite3_mutex_held(pBt->mutex) );

  if( pgno>btreePagecount(pBt) ){
    rc = SQLITE_CORRUPT_BKPT;
  }else{
    rc = btreeGetPage(pBt, pgno, ppPage, 0, bReadonly);
    if( rc==SQLITE_OK ){
      rc = btreeInitPage(*ppPage);
      if( rc!=SQLITE_OK ){
        releasePage(*ppPage);
      }
    }
  }

  testcase( pgno==0 );
  assert( pgno!=0 || rc==SQLITE_CORRUPT );
  return rc;
}
