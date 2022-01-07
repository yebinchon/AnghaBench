
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ szSlot; int bUnderPressure; scalar_t__ nSlot; } ;
struct TYPE_4__ {scalar_t__ szPage; scalar_t__ szExtra; } ;
typedef TYPE_1__ PCache1 ;


 TYPE_3__ pcache1 ;
 int sqlite3HeapNearlyFull () ;

__attribute__((used)) static int pcache1UnderMemoryPressure(PCache1 *pCache){
  if( pcache1.nSlot && (pCache->szPage+pCache->szExtra)<=pcache1.szSlot ){
    return pcache1.bUnderPressure;
  }else{
    return sqlite3HeapNearlyFull();
  }
}
