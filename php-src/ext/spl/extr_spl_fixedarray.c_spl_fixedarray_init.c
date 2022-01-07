
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_long ;
struct TYPE_3__ {scalar_t__ size; int * elements; } ;
typedef TYPE_1__ spl_fixedarray ;


 int * ecalloc (scalar_t__,int) ;

__attribute__((used)) static void spl_fixedarray_init(spl_fixedarray *array, zend_long size)
{
 if (size > 0) {
  array->size = 0;
  array->elements = ecalloc(size, sizeof(zval));
  array->size = size;
 } else {
  array->elements = ((void*)0);
  array->size = 0;
 }
}
