
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int * funcs; int data; } ;
struct TYPE_5__ {int value; int ce; TYPE_1__ it; } ;
typedef TYPE_2__ zend_user_iterator ;
typedef int zend_object_iterator ;
typedef int zend_class_entry ;


 int ZVAL_OBJ (int *,int ) ;
 int ZVAL_UNDEF (int *) ;
 int Z_ADDREF_P (int *) ;
 int Z_OBJCE_P (int *) ;
 int Z_OBJ_P (int *) ;
 TYPE_2__* emalloc (int) ;
 int zend_interface_iterator_funcs_iterator ;
 int zend_iterator_init (int *) ;
 int zend_throw_error (int *,char*) ;

__attribute__((used)) static zend_object_iterator *zend_user_it_get_iterator(zend_class_entry *ce, zval *object, int by_ref)
{
 zend_user_iterator *iterator;

 if (by_ref) {
  zend_throw_error(((void*)0), "An iterator cannot be used with foreach by reference");
  return ((void*)0);
 }

 iterator = emalloc(sizeof(zend_user_iterator));

 zend_iterator_init((zend_object_iterator*)iterator);

 Z_ADDREF_P(object);
 ZVAL_OBJ(&iterator->it.data, Z_OBJ_P(object));
 iterator->it.funcs = &zend_interface_iterator_funcs_iterator;
 iterator->ce = Z_OBJCE_P(object);
 ZVAL_UNDEF(&iterator->value);
 return (zend_object_iterator*)iterator;
}
