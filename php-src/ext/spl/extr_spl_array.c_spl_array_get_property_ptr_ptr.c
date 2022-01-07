
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
struct TYPE_4__ {int ar_flags; scalar_t__ fptr_offset_get; } ;
typedef TYPE_1__ spl_array_object ;


 int SPL_ARRAY_ARRAY_AS_PROPS ;
 int ZEND_PROPERTY_EXISTS ;
 int ZVAL_STR (int *,int *) ;
 TYPE_1__* spl_array_from_obj (int *) ;
 int * spl_array_get_dimension_ptr (int,TYPE_1__*,int *,int) ;
 int * zend_std_get_property_ptr_ptr (int *,int *,int,void**) ;
 int zend_std_has_property (int *,int *,int ,int *) ;

__attribute__((used)) static zval *spl_array_get_property_ptr_ptr(zend_object *object, zend_string *name, int type, void **cache_slot)
{
 spl_array_object *intern = spl_array_from_obj(object);

 if ((intern->ar_flags & SPL_ARRAY_ARRAY_AS_PROPS) != 0
  && !zend_std_has_property(object, name, ZEND_PROPERTY_EXISTS, ((void*)0))) {


  zval member;
  if (intern->fptr_offset_get) {
   return ((void*)0);
  }
  ZVAL_STR(&member, name);
  return spl_array_get_dimension_ptr(1, intern, &member, type);
 }
 return zend_std_get_property_ptr_ptr(object, name, type, cache_slot);
}
