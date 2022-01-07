
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct _zend_module_entry {int name; } ;
struct TYPE_3__ {int * ce; int ref_type; struct _zend_module_entry* ptr; } ;
typedef TYPE_1__ reflection_object ;


 int REF_TYPE_OTHER ;
 int ZSTR_VAL (int *) ;
 int ZVAL_STRINGL (int ,int ,size_t) ;
 TYPE_1__* Z_REFLECTION_P (int *) ;
 int module_registry ;
 int reflection_extension_ptr ;
 int reflection_instantiate (int ,int *) ;
 int reflection_prop_name (int *) ;
 size_t strlen (char const*) ;
 struct _zend_module_entry* zend_hash_find_ptr (int *,int *) ;
 int zend_str_tolower_copy (int ,char const*,size_t) ;
 int * zend_string_alloc (size_t,int ) ;
 int zend_string_efree (int *) ;

__attribute__((used)) static void reflection_extension_factory(zval *object, const char *name_str)
{
 reflection_object *intern;
 size_t name_len = strlen(name_str);
 zend_string *lcname;
 struct _zend_module_entry *module;

 lcname = zend_string_alloc(name_len, 0);
 zend_str_tolower_copy(ZSTR_VAL(lcname), name_str, name_len);
 module = zend_hash_find_ptr(&module_registry, lcname);
 zend_string_efree(lcname);
 if (!module) {
  return;
 }

 reflection_instantiate(reflection_extension_ptr, object);
 intern = Z_REFLECTION_P(object);
 intern->ptr = module;
 intern->ref_type = REF_TYPE_OTHER;
 intern->ce = ((void*)0);
 ZVAL_STRINGL(reflection_prop_name(object), module->name, name_len);
}
