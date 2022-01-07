
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ zend_class_entry ;
typedef int zend_bool ;


 int EG (int ) ;
 int class_table ;
 int zend_hash_exists (int ,int *) ;
 scalar_t__ zend_string_equals_ci (int *,int ) ;
 scalar_t__ zend_string_equals_literal_ci (int *,char*) ;
 int zend_string_release (int *) ;
 int * zend_string_tolower (int *) ;

__attribute__((used)) static zend_bool preload_is_class_type_known(zend_class_entry *ce, zend_string *name) {
 if (zend_string_equals_literal_ci(name, "self") ||
  zend_string_equals_literal_ci(name, "parent") ||
  zend_string_equals_ci(name, ce->name)) {
  return 1;
 }

 zend_string *lcname = zend_string_tolower(name);
 zend_bool known = zend_hash_exists(EG(class_table), lcname);
 zend_string_release(lcname);
 return known;
}
