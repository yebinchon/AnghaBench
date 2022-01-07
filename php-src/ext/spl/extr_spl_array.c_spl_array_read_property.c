
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
 int * spl_array_read_dimension (int *,int *,int,int *) ;
 int zend_std_has_property (int *,int *,int ,int *) ;
 int * zend_std_read_property (int *,int *,int,void**,int *) ;

__attribute__((used)) static zval *spl_array_read_property(zend_object *object, zend_string *name, int type, void **cache_slot, zval *rv)
{
 spl_array_object *intern = spl_array_from_obj(object);

 if ((intern->ar_flags & SPL_ARRAY_ARRAY_AS_PROPS) != 0
  && !zend_std_has_property(object, name, ZEND_PROPERTY_EXISTS, ((void*)0))) {
  zval member;
  ZVAL_STR(&member, name);
  return spl_array_read_dimension(object, &member, type, rv);
 }
 return zend_std_read_property(object, name, type, cache_slot, rv);
}
