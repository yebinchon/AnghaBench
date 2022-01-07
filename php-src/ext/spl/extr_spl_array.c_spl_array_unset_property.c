
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
 int spl_array_unset_dimension (int *,int *) ;
 int zend_std_has_property (int *,int *,int ,int *) ;
 int zend_std_unset_property (int *,int *,void**) ;

__attribute__((used)) static void spl_array_unset_property(zend_object *object, zend_string *name, void **cache_slot)
{
 spl_array_object *intern = spl_array_from_obj(object);

 if ((intern->ar_flags & SPL_ARRAY_ARRAY_AS_PROPS) != 0
  && !zend_std_has_property(object, name, ZEND_PROPERTY_EXISTS, ((void*)0))) {
  zval member;
  ZVAL_STR(&member, name);
  spl_array_unset_dimension(object, &member);
  return;
 }
 zend_std_unset_property(object, name, cache_slot);
}
