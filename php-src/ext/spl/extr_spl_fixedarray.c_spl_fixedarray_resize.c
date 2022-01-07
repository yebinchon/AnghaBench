
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef size_t zend_long ;
struct TYPE_4__ {size_t size; int * elements; } ;
typedef TYPE_1__ spl_fixedarray ;


 int efree (int *) ;
 int * erealloc (int *,int) ;
 int memset (int *,char,int) ;
 int * safe_erealloc (int *,size_t,int,int ) ;
 int spl_fixedarray_init (TYPE_1__*,size_t) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_fixedarray_resize(spl_fixedarray *array, zend_long size)
{
 if (size == array->size) {

  return;
 }


 if (array->size == 0) {
  spl_fixedarray_init(array, size);
  return;
 }


 if (size == 0) {
  zend_long i;

  for (i = 0; i < array->size; i++) {
   zval_ptr_dtor(&(array->elements[i]));
  }

  if (array->elements) {
   efree(array->elements);
   array->elements = ((void*)0);
  }
 } else if (size > array->size) {
  array->elements = safe_erealloc(array->elements, size, sizeof(zval), 0);
  memset(array->elements + array->size, '\0', sizeof(zval) * (size - array->size));
 } else {
  zend_long i;

  for (i = size; i < array->size; i++) {
   zval_ptr_dtor(&(array->elements[i]));
  }
  array->elements = erealloc(array->elements, sizeof(zval) * size);
 }

 array->size = size;
}
