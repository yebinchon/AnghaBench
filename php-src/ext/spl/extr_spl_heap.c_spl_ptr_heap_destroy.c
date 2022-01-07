
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; struct TYPE_5__* elements; int (* dtor ) (int ) ;} ;
typedef TYPE_1__ spl_ptr_heap ;


 int efree (TYPE_1__*) ;
 int spl_heap_elem (TYPE_1__*,int) ;
 int stub1 (int ) ;

__attribute__((used)) static void spl_ptr_heap_destroy(spl_ptr_heap *heap) {
 int i;

 for (i = 0; i < heap->count; ++i) {
  heap->dtor(spl_heap_elem(heap, i));
 }

 efree(heap->elements);
 efree(heap);
}
