
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_4__ {scalar_t__ fptr_cmp; } ;
typedef TYPE_1__ spl_heap_object ;


 scalar_t__ EG (int ) ;
 scalar_t__ FAILURE ;
 int ZEND_NORMALIZE_BOOL (int ) ;
 TYPE_1__* Z_SPLHEAP_P (int *) ;
 int exception ;
 scalar_t__ spl_ptr_heap_cmp_cb_helper (int *,TYPE_1__*,int *,int *,int *) ;
 int zend_compare (int *,int *) ;

__attribute__((used)) static int spl_ptr_heap_zval_max_cmp(void *x, void *y, zval *object) {
 zval *a = x, *b = y;

 if (EG(exception)) {
  return 0;
 }

 if (object) {
  spl_heap_object *heap_object = Z_SPLHEAP_P(object);
  if (heap_object->fptr_cmp) {
   zend_long lval = 0;
   if (spl_ptr_heap_cmp_cb_helper(object, heap_object, a, b, &lval) == FAILURE) {

    return 0;
   }
   return ZEND_NORMALIZE_BOOL(lval);
  }
 }

 return zend_compare(a, b);
}
