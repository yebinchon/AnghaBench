
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
typedef int zend_script ;
typedef int zend_class_entry ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ zend_arg_info ;
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
 scalar_t__ ZEND_TYPE_HAS_CLASS (int ) ;
 scalar_t__ ZEND_TYPE_HAS_NAME (int ) ;
 int ZEND_TYPE_IS_SET (int ) ;
 int ZEND_TYPE_NAME (int ) ;
 int ZEND_TYPE_PURE_MASK (int ) ;
 int * get_class_entry (int const*,int *) ;
 int zend_convert_type_declaration_mask (int ) ;
 int zend_string_release_ex (int *,int ) ;
 int * zend_string_tolower (int ) ;

uint32_t zend_fetch_arg_info_type(const zend_script *script, zend_arg_info *arg_info, zend_class_entry **pce)
{
 uint32_t tmp;
 if (!ZEND_TYPE_IS_SET(arg_info->type)) {
  return MAY_BE_ANY|MAY_BE_ARRAY_KEY_ANY|MAY_BE_ARRAY_OF_ANY|MAY_BE_ARRAY_OF_REF|MAY_BE_RC1|MAY_BE_RCN;
 }

 tmp = zend_convert_type_declaration_mask(ZEND_TYPE_PURE_MASK(arg_info->type));
 *pce = ((void*)0);
 if (ZEND_TYPE_HAS_CLASS(arg_info->type)) {
  tmp |= MAY_BE_OBJECT;

  if (ZEND_TYPE_HAS_NAME(arg_info->type)) {
   zend_string *lcname = zend_string_tolower(ZEND_TYPE_NAME(arg_info->type));
   *pce = get_class_entry(script, lcname);
   zend_string_release_ex(lcname, 0);
  }
 }
 if (tmp & (MAY_BE_STRING|MAY_BE_ARRAY|MAY_BE_OBJECT|MAY_BE_RESOURCE)) {
  tmp |= MAY_BE_RC1 | MAY_BE_RCN;
 }
 return tmp;
}
