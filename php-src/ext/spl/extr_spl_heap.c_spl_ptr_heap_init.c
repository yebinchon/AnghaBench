
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int spl_ptr_heap_dtor_func ;
typedef int spl_ptr_heap_ctor_func ;
typedef int spl_ptr_heap_cmp_func ;
struct TYPE_4__ {size_t elem_size; scalar_t__ flags; scalar_t__ count; int max_size; int elements; int cmp; int ctor; int dtor; } ;
typedef TYPE_1__ spl_ptr_heap ;


 int PTR_HEAP_BLOCK_SIZE ;
 int ecalloc (int ,size_t) ;
 TYPE_1__* emalloc (int) ;

__attribute__((used)) static spl_ptr_heap *spl_ptr_heap_init(spl_ptr_heap_cmp_func cmp, spl_ptr_heap_ctor_func ctor, spl_ptr_heap_dtor_func dtor, size_t elem_size)
{
 spl_ptr_heap *heap = emalloc(sizeof(spl_ptr_heap));

 heap->dtor = dtor;
 heap->ctor = ctor;
 heap->cmp = cmp;
 heap->elements = ecalloc(PTR_HEAP_BLOCK_SIZE, elem_size);
 heap->max_size = PTR_HEAP_BLOCK_SIZE;
 heap->count = 0;
 heap->flags = 0;
 heap->elem_size = elem_size;

 return heap;
}
