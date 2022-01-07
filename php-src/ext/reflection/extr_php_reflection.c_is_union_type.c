
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_type ;
typedef int zend_bool ;
typedef int uint32_t ;


 int MAY_BE_BOOL ;
 scalar_t__ ZEND_TYPE_HAS_CLASS (int ) ;
 scalar_t__ ZEND_TYPE_HAS_LIST (int ) ;
 int ZEND_TYPE_PURE_MASK_WITHOUT_NULL (int ) ;

__attribute__((used)) static zend_bool is_union_type(zend_type type) {
 if (ZEND_TYPE_HAS_LIST(type)) {
  return 1;
 }
 uint32_t type_mask_without_null = ZEND_TYPE_PURE_MASK_WITHOUT_NULL(type);
 if (ZEND_TYPE_HAS_CLASS(type)) {
  return type_mask_without_null != 0;
 }
 if (type_mask_without_null == MAY_BE_BOOL) {
  return 0;
 }

 return (type_mask_without_null & (type_mask_without_null - 1)) != 0;
}
