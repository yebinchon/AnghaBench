
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
struct TYPE_3__ {int ar_flags; } ;
typedef TYPE_1__ spl_array_object ;


 int SPL_ARRAY_ARRAY_AS_PROPS ;
 int ZEND_PROPERTY_EXISTS ;
 int ZVAL_STR (int *,int *) ;
 TYPE_1__* spl_array_from_obj (int *) ;
 int spl_array_has_dimension (int *,int *,int) ;
 int zend_std_has_property (int *,int *,int,void**) ;

__attribute__((used)) static int spl_array_has_property(zend_object *object, zend_string *name, int has_set_exists, void **cache_slot)
{
 spl_array_object *intern = spl_array_from_obj(object);

 if ((intern->ar_flags & SPL_ARRAY_ARRAY_AS_PROPS) != 0
  && !zend_std_has_property(object, name, ZEND_PROPERTY_EXISTS, ((void*)0))) {
  zval member;
  ZVAL_STR(&member, name);
  return spl_array_has_dimension(object, &member, has_set_exists);
 }
 return zend_std_has_property(object, name, has_set_exists, cache_slot);
}
