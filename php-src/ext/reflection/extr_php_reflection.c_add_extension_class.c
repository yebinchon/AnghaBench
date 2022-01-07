
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_12__ {int name; } ;
typedef TYPE_4__ zend_module_entry ;
struct TYPE_10__ {TYPE_1__* module; } ;
struct TYPE_11__ {TYPE_2__ internal; } ;
struct TYPE_13__ {scalar_t__ type; int * name; TYPE_3__ info; } ;
typedef TYPE_5__ zend_class_entry ;
typedef scalar_t__ zend_bool ;
struct TYPE_9__ {int name; } ;


 scalar_t__ ZEND_INTERNAL_CLASS ;
 int Z_ARRVAL_P (int *) ;
 int add_next_index_str (int *,int ) ;
 int strcasecmp (int ,int ) ;
 int zend_hash_update (int ,int *,int *) ;
 int zend_reflection_class_factory (TYPE_5__*,int *) ;
 int zend_string_copy (int *) ;
 int zend_string_equals_ci (int *,int *) ;

__attribute__((used)) static void add_extension_class(zend_class_entry *ce, zend_string *key, zval *class_array, zend_module_entry *module, zend_bool add_reflection_class)
{
 if (ce->type == ZEND_INTERNAL_CLASS && ce->info.internal.module && !strcasecmp(ce->info.internal.module->name, module->name)) {
  zend_string *name;

  if (!zend_string_equals_ci(ce->name, key)) {

   name = key;
  } else {

   name = ce->name;
  }
  if (add_reflection_class) {
   zval zclass;
   zend_reflection_class_factory(ce, &zclass);
   zend_hash_update(Z_ARRVAL_P(class_array), name, &zclass);
  } else {
   add_next_index_str(class_array, zend_string_copy(name));
  }
 }
}
