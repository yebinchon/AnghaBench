
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_string ;
typedef int zend_object ;
struct TYPE_2__ {int name; } ;


 TYPE_1__* php_com_saproxy_class_entry ;
 int * zend_string_copy (int ) ;

__attribute__((used)) static zend_string* saproxy_class_name_get(const zend_object *object)
{
 return zend_string_copy(php_com_saproxy_class_entry->name);
}
