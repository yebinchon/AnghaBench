
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
typedef int xmlreader_prop_handler ;
struct TYPE_3__ {int * prop_handler; } ;
typedef TYPE_1__ xmlreader_object ;


 int E_WARNING ;
 int php_error_docref (int *,int ,char*) ;
 TYPE_1__* php_xmlreader_fetch_object (int *) ;
 int * zend_hash_find_ptr (int *,int *) ;
 int * zend_std_write_property (int *,int *,int *,void**) ;

zval *xmlreader_write_property(zend_object *object, zend_string *name, zval *value, void **cache_slot)
{
 xmlreader_object *obj;
 xmlreader_prop_handler *hnd = ((void*)0);

 obj = php_xmlreader_fetch_object(object);

 if (obj->prop_handler != ((void*)0)) {
  hnd = zend_hash_find_ptr(obj->prop_handler, name);
 }
 if (hnd != ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "Cannot write to read-only property");
 } else {
  value = zend_std_write_property(object, name, value, cache_slot);
 }

 return value;
}
