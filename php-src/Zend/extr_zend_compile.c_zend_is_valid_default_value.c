
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_type ;
typedef int zend_bool ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_LONG ;
 int MAY_BE_DOUBLE ;
 int MAY_BE_ITERABLE ;
 int ZEND_ASSERT (int ) ;
 scalar_t__ ZEND_TYPE_CONTAINS_CODE (int ,scalar_t__) ;
 int ZEND_TYPE_FULL_MASK (int ) ;
 int ZEND_TYPE_IS_SET (int ) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int convert_to_double (int *) ;

__attribute__((used)) static zend_bool zend_is_valid_default_value(zend_type type, zval *value)
{
 ZEND_ASSERT(ZEND_TYPE_IS_SET(type));
 if (ZEND_TYPE_CONTAINS_CODE(type, Z_TYPE_P(value))) {
  return 1;
 }
 if ((ZEND_TYPE_FULL_MASK(type) & MAY_BE_DOUBLE) && Z_TYPE_P(value) == IS_LONG) {

  convert_to_double(value);
  return 1;
 }
 if ((ZEND_TYPE_FULL_MASK(type) & MAY_BE_ITERABLE) && Z_TYPE_P(value) == IS_ARRAY) {
  return 1;
 }
 return 0;
}
