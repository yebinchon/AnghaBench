
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_9__ {int * funcs; int data; } ;
struct TYPE_8__ {TYPE_2__ it; int value; int * ce; } ;
typedef TYPE_1__ zend_user_iterator ;
typedef TYPE_2__ zend_object_iterator ;
typedef int zend_class_entry ;
struct TYPE_10__ {int ar_flags; } ;
typedef TYPE_3__ spl_array_object ;


 int SPL_ARRAY_OVERLOADED_CURRENT ;
 int ZVAL_OBJ (int *,int ) ;
 int ZVAL_UNDEF (int *) ;
 int Z_ADDREF_P (int *) ;
 int Z_OBJ_P (int *) ;
 TYPE_3__* Z_SPLARRAY_P (int *) ;
 TYPE_1__* emalloc (int) ;
 int spl_array_it_funcs ;
 int spl_ce_RuntimeException ;
 int zend_iterator_init (TYPE_2__*) ;
 int zend_throw_exception (int ,char*,int ) ;

zend_object_iterator *spl_array_get_iterator(zend_class_entry *ce, zval *object, int by_ref)
{
 zend_user_iterator *iterator;
 spl_array_object *array_object = Z_SPLARRAY_P(object);

 if (by_ref && (array_object->ar_flags & SPL_ARRAY_OVERLOADED_CURRENT)) {
  zend_throw_exception(spl_ce_RuntimeException, "An iterator cannot be used with foreach by reference", 0);
  return ((void*)0);
 }

 iterator = emalloc(sizeof(zend_user_iterator));

 zend_iterator_init(&iterator->it);

 Z_ADDREF_P(object);
 ZVAL_OBJ(&iterator->it.data, Z_OBJ_P(object));
 iterator->it.funcs = &spl_array_it_funcs;
 iterator->ce = ce;
 ZVAL_UNDEF(&iterator->value);

 return &iterator->it;
}
