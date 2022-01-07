
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
typedef int zend_script ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ zend_property_info ;
typedef int zend_class_entry ;
typedef int uint32_t ;


 int MAY_BE_ANY ;
 int MAY_BE_ARRAY ;
 int MAY_BE_ARRAY_KEY_ANY ;
 int MAY_BE_ARRAY_OF_ANY ;
 int MAY_BE_ARRAY_OF_REF ;
 int MAY_BE_OBJECT ;
 int MAY_BE_RC1 ;
 int MAY_BE_RCN ;
 int MAY_BE_RESOURCE ;
 int MAY_BE_STRING ;
 int * ZEND_TYPE_CE (int ) ;
 scalar_t__ ZEND_TYPE_HAS_CE (int ) ;
 scalar_t__ ZEND_TYPE_HAS_CLASS (int ) ;
 scalar_t__ ZEND_TYPE_HAS_NAME (int ) ;
 scalar_t__ ZEND_TYPE_IS_SET (int ) ;
 int ZEND_TYPE_NAME (int ) ;
 int ZEND_TYPE_PURE_MASK (int ) ;
 int * get_class_entry (int const*,int *) ;
 int zend_convert_type_declaration_mask (int ) ;
 int zend_string_release (int *) ;
 int * zend_string_tolower (int ) ;

__attribute__((used)) static uint32_t zend_fetch_prop_type(const zend_script *script, zend_property_info *prop_info, zend_class_entry **pce)
{
 if (pce) {
  *pce = ((void*)0);
 }
 if (prop_info && ZEND_TYPE_IS_SET(prop_info->type)) {
  uint32_t type = zend_convert_type_declaration_mask(ZEND_TYPE_PURE_MASK(prop_info->type));

  if (type & (MAY_BE_STRING|MAY_BE_ARRAY|MAY_BE_OBJECT|MAY_BE_RESOURCE)) {
   type |= MAY_BE_RC1 | MAY_BE_RCN;
  }
  if (ZEND_TYPE_HAS_CLASS(prop_info->type)) {
   type |= MAY_BE_OBJECT;
   if (pce) {
    if (ZEND_TYPE_HAS_CE(prop_info->type)) {
     *pce = ZEND_TYPE_CE(prop_info->type);
    } else if (ZEND_TYPE_HAS_NAME(prop_info->type)) {
     zend_string *lcname = zend_string_tolower(ZEND_TYPE_NAME(prop_info->type));
     *pce = get_class_entry(script, lcname);
     zend_string_release(lcname);
    }
   }
  }
  return type;
 }
 return MAY_BE_ANY | MAY_BE_ARRAY_KEY_ANY | MAY_BE_ARRAY_OF_ANY | MAY_BE_ARRAY_OF_REF | MAY_BE_RC1 | MAY_BE_RCN;
}
