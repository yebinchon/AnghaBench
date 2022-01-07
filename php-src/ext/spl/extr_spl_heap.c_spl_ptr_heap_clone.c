
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int max_size; int count; int elem_size; int (* ctor ) (int ) ;int elements; int flags; int cmp; int dtor; } ;
typedef TYPE_1__ spl_ptr_heap ;


 TYPE_1__* emalloc (int) ;
 int memcpy (int ,int ,int) ;
 int safe_emalloc (int,int,int ) ;
 int spl_heap_elem (TYPE_1__*,int) ;
 int stub1 (int ) ;

__attribute__((used)) static spl_ptr_heap *spl_ptr_heap_clone(spl_ptr_heap *from) {
 int i;

 spl_ptr_heap *heap = emalloc(sizeof(spl_ptr_heap));

 heap->dtor = from->dtor;
 heap->ctor = from->ctor;
 heap->cmp = from->cmp;
 heap->max_size = from->max_size;
 heap->count = from->count;
 heap->flags = from->flags;
 heap->elem_size = from->elem_size;

 heap->elements = safe_emalloc(from->elem_size, from->max_size, 0);
 memcpy(heap->elements, from->elements, from->elem_size * from->max_size);

 for (i = 0; i < heap->count; ++i) {
  heap->ctor(spl_heap_elem(heap, i));
 }

 return heap;
}
