
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zip_prop_handler ;
typedef int zend_string ;
typedef int zend_object ;
struct TYPE_4__ {int * prop_handler; } ;
typedef TYPE_1__ ze_zip_object ;


 scalar_t__ IS_NULL ;
 scalar_t__ Z_TYPE (int ) ;
 TYPE_1__* php_zip_fetch_object (int *) ;
 int * php_zip_property_reader (TYPE_1__*,int *,int *) ;
 int * zend_hash_find_ptr (int *,int *) ;
 int zend_is_true (int *) ;
 int zend_std_has_property (int *,int *,int,void**) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int php_zip_has_property(zend_object *object, zend_string *name, int type, void **cache_slot)
{
 ze_zip_object *obj;
 zip_prop_handler *hnd = ((void*)0);
 int retval = 0;

 obj = php_zip_fetch_object(object);

 if (obj->prop_handler != ((void*)0)) {
  hnd = zend_hash_find_ptr(obj->prop_handler, name);
 }

 if (hnd != ((void*)0)) {
  zval tmp, *prop;

  if (type == 2) {
   retval = 1;
  } else if ((prop = php_zip_property_reader(obj, hnd, &tmp)) != ((void*)0)) {
   if (type == 1) {
    retval = zend_is_true(&tmp);
   } else if (type == 0) {
    retval = (Z_TYPE(tmp) != IS_NULL);
   }
  }

  zval_ptr_dtor(&tmp);
 } else {
  retval = zend_std_has_property(object, name, type, cache_slot);
 }

 return retval;
}
