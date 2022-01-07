
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int URL; int author; int copyright; int version; int name; } ;
typedef TYPE_1__ zend_extension ;
typedef int smart_str ;


 int smart_str_append_printf (int *,char*,char*,...) ;
 int smart_str_appends (int *,char*) ;

__attribute__((used)) static void _zend_extension_string(smart_str *str, zend_extension *extension, char *indent)
{
 smart_str_append_printf(str, "%sZend Extension [ %s ", indent, extension->name);

 if (extension->version) {
  smart_str_append_printf(str, "%s ", extension->version);
 }
 if (extension->copyright) {
  smart_str_append_printf(str, "%s ", extension->copyright);
 }
 if (extension->author) {
  smart_str_append_printf(str, "by %s ", extension->author);
 }
 if (extension->URL) {
  smart_str_append_printf(str, "<%s> ", extension->URL);
 }

 smart_str_appends(str, "]\n");
}
