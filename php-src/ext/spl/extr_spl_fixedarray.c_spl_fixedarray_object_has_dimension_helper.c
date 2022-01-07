
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef size_t zend_long ;
struct TYPE_4__ {size_t size; int * elements; } ;
struct TYPE_5__ {TYPE_1__ array; } ;
typedef TYPE_2__ spl_fixedarray_object ;


 scalar_t__ IS_LONG ;
 scalar_t__ Z_ISUNDEF (int ) ;
 size_t Z_LVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 size_t spl_offset_convert_to_long (int *) ;
 scalar_t__ zend_is_true (int *) ;

__attribute__((used)) static inline int spl_fixedarray_object_has_dimension_helper(spl_fixedarray_object *intern, zval *offset, int check_empty)
{
 zend_long index;
 int retval;

 if (Z_TYPE_P(offset) != IS_LONG) {
  index = spl_offset_convert_to_long(offset);
 } else {
  index = Z_LVAL_P(offset);
 }

 if (index < 0 || index >= intern->array.size) {
  retval = 0;
 } else {
  if (Z_ISUNDEF(intern->array.elements[index])) {
   retval = 0;
  } else if (check_empty) {
   if (zend_is_true(&intern->array.elements[index])) {
    retval = 1;
   } else {
    retval = 0;
   }
  } else {
   retval = 1;
  }
 }

 return retval;
}
