
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_3__ {int refcount; int ce_flags; int * name; } ;
typedef TYPE_1__ zend_class_entry ;


 int ZEND_ACC_IMMUTABLE ;
 int add_next_index_str (int *,int ) ;
 scalar_t__ same_name (int *,int *) ;
 int zend_string_copy (int *) ;

__attribute__((used)) static void copy_class_or_interface_name(zval *array, zend_string *key, zend_class_entry *ce)
{
 if ((ce->refcount == 1 && !(ce->ce_flags & ZEND_ACC_IMMUTABLE)) ||
  same_name(key, ce->name)) {
  key = ce->name;
 }
 add_next_index_str(array, zend_string_copy(key));
}
