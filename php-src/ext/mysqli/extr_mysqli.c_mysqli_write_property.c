
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
struct TYPE_6__ {int (* write_func ) (TYPE_2__*,int *) ;} ;
typedef TYPE_1__ mysqli_prop_handler ;
struct TYPE_7__ {int * prop_handler; } ;
typedef TYPE_2__ mysqli_object ;


 TYPE_2__* php_mysqli_fetch_object (int *) ;
 int stub1 (TYPE_2__*,int *) ;
 TYPE_1__* zend_hash_find_ptr (int *,int *) ;
 int * zend_std_write_property (int *,int *,int *,void**) ;

zval *mysqli_write_property(zend_object *object, zend_string *name, zval *value, void **cache_slot)
{
 mysqli_object *obj;
 mysqli_prop_handler *hnd = ((void*)0);

 obj = php_mysqli_fetch_object(object);

 if (obj->prop_handler != ((void*)0)) {
  hnd = zend_hash_find_ptr(obj->prop_handler, name);
 }

 if (hnd) {
  hnd->write_func(obj, value);
 } else {
  value = zend_std_write_property(object, name, value, cache_slot);
 }

 return value;
}
