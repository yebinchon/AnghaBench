
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
 int ZVAL_UNDEF (int *) ;
 size_t Z_LVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int spl_ce_RuntimeException ;
 size_t spl_offset_convert_to_long (int *) ;
 int zend_throw_exception (int ,char*,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static inline void spl_fixedarray_object_unset_dimension_helper(spl_fixedarray_object *intern, zval *offset)
{
 zend_long index;

 if (Z_TYPE_P(offset) != IS_LONG) {
  index = spl_offset_convert_to_long(offset);
 } else {
  index = Z_LVAL_P(offset);
 }

 if (index < 0 || index >= intern->array.size) {
  zend_throw_exception(spl_ce_RuntimeException, "Index invalid or out of range", 0);
  return;
 } else {
  zval_ptr_dtor(&(intern->array.elements[index]));
  ZVAL_UNDEF(&intern->array.elements[index]);
 }
}
