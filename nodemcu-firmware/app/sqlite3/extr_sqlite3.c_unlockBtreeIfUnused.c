
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ inTransaction; TYPE_1__* pPage1; int pPager; int mutex; } ;
struct TYPE_6__ {int aData; } ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtShared ;


 scalar_t__ TRANS_NONE ;
 int assert (int) ;
 scalar_t__ countValidCursors (TYPE_2__*,int ) ;
 int releasePageNotNull (TYPE_1__*) ;
 int sqlite3PagerRefcount (int ) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static void unlockBtreeIfUnused(BtShared *pBt){
  assert( sqlite3_mutex_held(pBt->mutex) );
  assert( countValidCursors(pBt,0)==0 || pBt->inTransaction>TRANS_NONE );
  if( pBt->inTransaction==TRANS_NONE && pBt->pPage1!=0 ){
    MemPage *pPage1 = pBt->pPage1;
    assert( pPage1->aData );
    assert( sqlite3PagerRefcount(pBt->pPager)==1 );
    pBt->pPage1 = 0;
    releasePageNotNull(pPage1);
  }
}
