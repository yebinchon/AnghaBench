
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_5__ {scalar_t__ type; int ce_flags; } ;
typedef TYPE_1__ zend_class_entry ;


 int EG (int ) ;
 int ZEND_ACC_CONSTANTS_UPDATED ;
 int ZEND_ACC_PROPERTY_TYPES_RESOLVED ;
 scalar_t__ ZEND_INTERNAL_CLASS ;
 int class_table ;
 TYPE_1__* zend_hash_find_ptr (int ,int *) ;
 int zend_string_release (int *) ;
 int * zend_string_tolower (int *) ;

__attribute__((used)) static zend_class_entry *preload_fetch_resolved_ce(zend_string *name, zend_class_entry *self_ce) {
 zend_string *lcname = zend_string_tolower(name);
 zend_class_entry *ce = zend_hash_find_ptr(EG(class_table), lcname);
 zend_string_release(lcname);
 if (!ce) {
  return ((void*)0);
 }
 if (ce == self_ce) {

  return ce;
 }






 if (!(ce->ce_flags & ZEND_ACC_CONSTANTS_UPDATED)) {
  return ((void*)0);
 }
 if (!(ce->ce_flags & ZEND_ACC_PROPERTY_TYPES_RESOLVED)) {
  return ((void*)0);
 }
 return ce;
}
