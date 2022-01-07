
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; scalar_t__ (* cmp ) (void*,void*,void*) ;int flags; int (* dtor ) (void*) ;} ;
typedef TYPE_1__ spl_ptr_heap ;


 scalar_t__ EG (int ) ;
 int FAILURE ;
 int SPL_HEAP_CORRUPTED ;
 int SUCCESS ;
 int exception ;
 void* spl_heap_elem (TYPE_1__*,int) ;
 int spl_heap_elem_copy (TYPE_1__*,void*,void*) ;
 int stub1 (void*) ;
 scalar_t__ stub2 (void*,void*,void*) ;
 scalar_t__ stub3 (void*,void*,void*) ;

__attribute__((used)) static int spl_ptr_heap_delete_top(spl_ptr_heap *heap, void *elem, void *cmp_userdata) {
 int i, j;
 const int limit = (heap->count-1)/2;
 void *bottom;

 if (heap->count == 0) {
  return FAILURE;
 }

 if (elem) {
  spl_heap_elem_copy(heap, elem, spl_heap_elem(heap, 0));
 } else {
  heap->dtor(spl_heap_elem(heap, 0));
 }

 bottom = spl_heap_elem(heap, --heap->count);

 for (i = 0; i < limit; i = j) {

  j = i * 2 + 1;
  if (j != heap->count && heap->cmp(spl_heap_elem(heap, j+1), spl_heap_elem(heap, j), cmp_userdata) > 0) {
   j++;
  }


  if(heap->cmp(bottom, spl_heap_elem(heap, j), cmp_userdata) < 0) {
   spl_heap_elem_copy(heap, spl_heap_elem(heap, i), spl_heap_elem(heap, j));
  } else {
   break;
  }
 }

 if (EG(exception)) {

  heap->flags |= SPL_HEAP_CORRUPTED;
 }

 spl_heap_elem_copy(heap, spl_heap_elem(heap, i), bottom);
 return SUCCESS;
}
