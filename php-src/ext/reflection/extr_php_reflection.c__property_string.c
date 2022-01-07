
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int name; } ;
typedef TYPE_1__ zend_property_info ;
typedef int smart_str ;


 int ZEND_ACC_PPP_MASK ;



 int ZEND_ACC_STATIC ;
 int smart_str_append_printf (int *,char*,char const*) ;
 int smart_str_appends (int *,char*) ;
 int zend_unmangle_property_name (int ,char const**,char const**) ;

__attribute__((used)) static void _property_string(smart_str *str, zend_property_info *prop, const char *prop_name, char* indent)
{
 smart_str_append_printf(str, "%sProperty [ ", indent);
 if (!prop) {
  smart_str_append_printf(str, "<dynamic> public $%s", prop_name);
 } else {
  if (!(prop->flags & ZEND_ACC_STATIC)) {
   smart_str_appends(str, "<default> ");
  }


  switch (prop->flags & ZEND_ACC_PPP_MASK) {
   case 128:
    smart_str_appends(str, "public ");
    break;
   case 130:
    smart_str_appends(str, "private ");
    break;
   case 129:
    smart_str_appends(str, "protected ");
    break;
  }
  if (prop->flags & ZEND_ACC_STATIC) {
   smart_str_appends(str, "static ");
  }
  if (!prop_name) {
   const char *class_name;
   zend_unmangle_property_name(prop->name, &class_name, &prop_name);
  }
  smart_str_append_printf(str, "$%s", prop_name);
 }

 smart_str_appends(str, " ]\n");
}
