
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_uchar ;
typedef int uint32_t ;


 scalar_t__ IS_CONST ;
 scalar_t__ IS_UNUSED ;
 int MAY_BE_ANY ;
 int MAY_BE_ARRAY ;
 int MAY_BE_ARRAY_KEY_ANY ;
 int MAY_BE_ARRAY_KEY_LONG ;
 int MAY_BE_ARRAY_KEY_STRING ;
 int MAY_BE_ARRAY_OF_NULL ;
 int MAY_BE_ARRAY_SHIFT ;
 int MAY_BE_DOUBLE ;
 int MAY_BE_FALSE ;
 int MAY_BE_LONG ;
 int MAY_BE_NULL ;
 int MAY_BE_OBJECT ;
 int MAY_BE_RC1 ;
 int MAY_BE_RCN ;
 int MAY_BE_RESOURCE ;
 int MAY_BE_STRING ;
 int MAY_BE_TRUE ;
 int MAY_BE_UNDEF ;

__attribute__((used)) static uint32_t assign_dim_result_type(
  uint32_t arr_type, uint32_t dim_type, uint32_t value_type, zend_uchar dim_op_type) {
 uint32_t tmp = arr_type & ~(MAY_BE_RC1|MAY_BE_RCN);

 if (arr_type & (MAY_BE_UNDEF|MAY_BE_NULL|MAY_BE_FALSE)) {
  tmp &= ~(MAY_BE_UNDEF|MAY_BE_NULL|MAY_BE_FALSE);
  tmp |= MAY_BE_ARRAY|MAY_BE_RC1;
 }
 if (tmp & (MAY_BE_ARRAY|MAY_BE_STRING)) {
  tmp |= MAY_BE_RC1;
 }
 if (tmp & (MAY_BE_OBJECT|MAY_BE_RESOURCE)) {
  tmp |= MAY_BE_RC1 | MAY_BE_RCN;
 }
 if (tmp & MAY_BE_ARRAY) {
  if (value_type & MAY_BE_UNDEF) {
   tmp |= MAY_BE_ARRAY_OF_NULL;
  }
  if (dim_op_type == IS_UNUSED) {
   tmp |= MAY_BE_ARRAY_KEY_LONG;
  } else {
   if (dim_type & (MAY_BE_LONG|MAY_BE_FALSE|MAY_BE_TRUE|MAY_BE_RESOURCE|MAY_BE_DOUBLE)) {
    tmp |= MAY_BE_ARRAY_KEY_LONG;
   }
   if (dim_type & MAY_BE_STRING) {
    tmp |= MAY_BE_ARRAY_KEY_STRING;
    if (dim_op_type != IS_CONST) {

     tmp |= MAY_BE_ARRAY_KEY_LONG;
    }
   }
   if (dim_type & (MAY_BE_UNDEF|MAY_BE_NULL)) {
    tmp |= MAY_BE_ARRAY_KEY_STRING;
   }
  }


  if (tmp & MAY_BE_ARRAY_KEY_ANY) {
   tmp |= (value_type & MAY_BE_ANY) << MAY_BE_ARRAY_SHIFT;
  }
 }
 return tmp;
}
