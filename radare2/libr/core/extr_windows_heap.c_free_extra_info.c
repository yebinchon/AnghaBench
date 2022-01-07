
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extraInfo; } ;
typedef int PDEBUG_HEAP_INFORMATION ;
typedef TYPE_1__ HeapBlock ;


 scalar_t__ GetFirstHeapBlock (int ,TYPE_1__*) ;
 scalar_t__ GetNextHeapBlock (int ,TYPE_1__*) ;
 int R_FREE (int ) ;
 int r_return_if_fail (int ) ;

__attribute__((used)) static void free_extra_info(PDEBUG_HEAP_INFORMATION heap) {
 r_return_if_fail (heap);
 HeapBlock hb;
 if (GetFirstHeapBlock (heap, &hb)) {
  do {
   R_FREE (hb.extraInfo);
  } while (GetNextHeapBlock (heap, &hb));
 }
}
