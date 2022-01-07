
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int ce; } ;
typedef TYPE_1__ zend_property_info ;
typedef scalar_t__ inheritance_status ;


 scalar_t__ INHERITANCE_ERROR ;
 scalar_t__ INHERITANCE_SUCCESS ;
 scalar_t__ INHERITANCE_UNRESOLVED ;
 int ZEND_ASSERT (int) ;
 scalar_t__ ZEND_TYPE_IS_SET (int ) ;
 scalar_t__ ZEND_TYPE_NAME (int ) ;
 scalar_t__ ZEND_TYPE_PURE_MASK (int ) ;
 scalar_t__ zend_perform_covariant_type_check (int ,int ,int ,int ) ;

inheritance_status property_types_compatible(
  const zend_property_info *parent_info, const zend_property_info *child_info) {
 if (ZEND_TYPE_PURE_MASK(parent_info->type) == ZEND_TYPE_PURE_MASK(child_info->type)
   && ZEND_TYPE_NAME(parent_info->type) == ZEND_TYPE_NAME(child_info->type)) {
  return INHERITANCE_SUCCESS;
 }

 if (ZEND_TYPE_IS_SET(parent_info->type) != ZEND_TYPE_IS_SET(child_info->type)) {
  return INHERITANCE_ERROR;
 }


 inheritance_status status1 = zend_perform_covariant_type_check(
  child_info->ce, child_info->type, parent_info->ce, parent_info->type);
 inheritance_status status2 = zend_perform_covariant_type_check(
  parent_info->ce, parent_info->type, child_info->ce, child_info->type);
 if (status1 == INHERITANCE_SUCCESS && status2 == INHERITANCE_SUCCESS) {
  return INHERITANCE_SUCCESS;
 }
 if (status1 == INHERITANCE_ERROR || status2 == INHERITANCE_ERROR) {
  return INHERITANCE_ERROR;
 }
 ZEND_ASSERT(status1 == INHERITANCE_UNRESOLVED && status2 == INHERITANCE_UNRESOLVED);
 return INHERITANCE_UNRESOLVED;
}
