
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
struct TYPE_8__ {int * funcs; int data; } ;
typedef TYPE_2__ zend_object_iterator ;
typedef int zend_class_entry ;
struct TYPE_7__ {TYPE_2__ it; int value; int * ce; } ;
struct TYPE_9__ {TYPE_1__ intern; } ;
typedef TYPE_3__ spl_fixedarray_it ;


 int ZVAL_OBJ (int *,int ) ;
 int ZVAL_UNDEF (int *) ;
 int Z_ADDREF_P (int *) ;
 int Z_OBJ_P (int *) ;
 TYPE_3__* emalloc (int) ;
 int spl_ce_RuntimeException ;
 int spl_fixedarray_it_funcs ;
 int zend_iterator_init (TYPE_2__*) ;
 int zend_throw_exception (int ,char*,int ) ;

zend_object_iterator *spl_fixedarray_get_iterator(zend_class_entry *ce, zval *object, int by_ref)
{
 spl_fixedarray_it *iterator;

 if (by_ref) {
  zend_throw_exception(spl_ce_RuntimeException, "An iterator cannot be used with foreach by reference", 0);
  return ((void*)0);
 }

 iterator = emalloc(sizeof(spl_fixedarray_it));

 zend_iterator_init((zend_object_iterator*)iterator);

 Z_ADDREF_P(object);
 ZVAL_OBJ(&iterator->intern.it.data, Z_OBJ_P(object));
 iterator->intern.it.funcs = &spl_fixedarray_it_funcs;
 iterator->intern.ce = ce;
 ZVAL_UNDEF(&iterator->intern.value);

 return &iterator->intern.it;
}
