
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zip_prop_handler ;
typedef int zend_string ;
typedef int zend_object ;
struct TYPE_3__ {int * prop_handler; } ;
typedef TYPE_1__ ze_zip_object ;


 TYPE_1__* php_zip_fetch_object (int *) ;
 int * zend_hash_find_ptr (int *,int *) ;
 int * zend_std_get_property_ptr_ptr (int *,int *,int,void**) ;

__attribute__((used)) static zval *php_zip_get_property_ptr_ptr(zend_object *object, zend_string *name, int type, void **cache_slot)
{
 ze_zip_object *obj;
 zval *retval = ((void*)0);
 zip_prop_handler *hnd = ((void*)0);

 obj = php_zip_fetch_object(object);

 if (obj->prop_handler != ((void*)0)) {
  hnd = zend_hash_find_ptr(obj->prop_handler, name);
 }

 if (hnd == ((void*)0)) {
  retval = zend_std_get_property_ptr_ptr(object, name, type, cache_slot);
 }

 return retval;
}
