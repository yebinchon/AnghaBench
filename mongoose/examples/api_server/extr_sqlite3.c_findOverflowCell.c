
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int nOverflow; int* aiOvfl; int ** apOvfl; TYPE_1__* pBt; } ;
struct TYPE_5__ {int mutex; } ;
typedef TYPE_2__ MemPage ;


 int assert (int ) ;
 int * findCell (TYPE_2__*,int) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static u8 *findOverflowCell(MemPage *pPage, int iCell){
  int i;
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  for(i=pPage->nOverflow-1; i>=0; i--){
    int k;
    k = pPage->aiOvfl[i];
    if( k<=iCell ){
      if( k==iCell ){
        return pPage->apOvfl[i];
      }
      iCell--;
    }
  }
  return findCell(pPage, iCell);
}
