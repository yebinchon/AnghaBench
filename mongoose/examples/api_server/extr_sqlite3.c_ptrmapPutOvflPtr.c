
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {scalar_t__ nData; scalar_t__ nKey; scalar_t__ nPayload; int iOverflow; } ;
struct TYPE_6__ {int pgno; int pBt; scalar_t__ intKey; } ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ CellInfo ;


 int PTRMAP_OVERFLOW1 ;
 int assert (int) ;
 int btreeParseCellPtr (TYPE_1__*,int *,TYPE_2__*) ;
 int get4byte (int *) ;
 int ptrmapPut (int ,int ,int ,int ,int*) ;

__attribute__((used)) static void ptrmapPutOvflPtr(MemPage *pPage, u8 *pCell, int *pRC){
  CellInfo info;
  if( *pRC ) return;
  assert( pCell!=0 );
  btreeParseCellPtr(pPage, pCell, &info);
  assert( (info.nData+(pPage->intKey?0:info.nKey))==info.nPayload );
  if( info.iOverflow ){
    Pgno ovfl = get4byte(&pCell[info.iOverflow]);
    ptrmapPut(pPage->pBt, ovfl, PTRMAP_OVERFLOW1, pPage->pgno, pRC);
  }
}
