
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Table ;
struct TYPE_5__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_4__ {int iCursor; int * pTab; } ;
typedef TYPE_2__ SrcList ;



__attribute__((used)) static Table *tableWithCursor(SrcList *pList, int iCursor){
  int j;
  for(j=0; j<pList->nSrc; j++){
    if( pList->a[j].iCursor==iCursor ) return pList->a[j].pTab;
  }
  return 0;
}
