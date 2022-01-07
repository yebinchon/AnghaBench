
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_12__ {int name; } ;
typedef TYPE_4__ zend_module_entry ;
struct TYPE_10__ {TYPE_1__* module; } ;
struct TYPE_11__ {TYPE_2__ internal; } ;
struct TYPE_13__ {scalar_t__ type; int name; TYPE_3__ info; } ;
typedef TYPE_5__ zend_class_entry ;
typedef int smart_str ;
struct TYPE_9__ {int name; } ;


 scalar_t__ ZEND_INTERNAL_CLASS ;
 int _class_string (int *,TYPE_5__*,int *,char*) ;
 int smart_str_append_printf (int *,char*) ;
 int strcasecmp (int ,int ) ;
 scalar_t__ zend_string_equals_ci (int ,int *) ;

__attribute__((used)) static void _extension_class_string(zend_class_entry *ce, zend_string *key, smart_str *str, char *indent, zend_module_entry *module, int *num_classes)
{
 if (ce->type == ZEND_INTERNAL_CLASS && ce->info.internal.module && !strcasecmp(ce->info.internal.module->name, module->name)) {

  if (zend_string_equals_ci(ce->name, key)) {
   smart_str_append_printf(str, "\n");
   _class_string(str, ce, ((void*)0), indent);
   (*num_classes)++;
  }
 }
}
