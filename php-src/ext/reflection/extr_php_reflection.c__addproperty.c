
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_4__ {int flags; int * ce; } ;
typedef TYPE_1__ zend_property_info ;
typedef int zend_class_entry ;


 int ZEND_ACC_PRIVATE ;
 int add_next_index_zval (int *,int *) ;
 int reflection_property_factory (int *,int *,TYPE_1__*,int *) ;

__attribute__((used)) static void _addproperty(zend_property_info *pptr, zend_string *key, zend_class_entry *ce, zval *retval, long filter)
{
 if ((pptr->flags & ZEND_ACC_PRIVATE) && pptr->ce != ce) {
  return;
 }

 if (pptr->flags & filter) {
  zval property;
  reflection_property_factory(ce, key, pptr, &property);
  add_next_index_zval(retval, &property);
 }
}
