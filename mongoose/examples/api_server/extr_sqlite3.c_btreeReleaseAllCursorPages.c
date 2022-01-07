
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iPage; scalar_t__* apPage; } ;
typedef TYPE_1__ BtCursor ;


 int releasePage (scalar_t__) ;

__attribute__((used)) static void btreeReleaseAllCursorPages(BtCursor *pCur){
  int i;
  for(i=0; i<=pCur->iPage; i++){
    releasePage(pCur->apPage[i]);
    pCur->apPage[i] = 0;
  }
  pCur->iPage = -1;
}
