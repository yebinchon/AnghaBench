
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
typedef int zend_class_entry ;
struct TYPE_4__ {int * funcs; int data; } ;
struct TYPE_5__ {int current; int object; TYPE_1__ intern; } ;
typedef TYPE_2__ date_period_it ;


 int ZVAL_OBJ (int *,int ) ;
 int ZVAL_UNDEF (int *) ;
 int Z_ADDREF_P (int *) ;
 int Z_OBJ_P (int *) ;
 int Z_PHPPERIOD_P (int *) ;
 int date_period_it_funcs ;
 TYPE_2__* emalloc (int) ;
 int zend_iterator_init (int *) ;
 int zend_throw_error (int *,char*) ;

zend_object_iterator *date_object_period_get_iterator(zend_class_entry *ce, zval *object, int by_ref)
{
 date_period_it *iterator;

 if (by_ref) {
  zend_throw_error(((void*)0), "An iterator cannot be used with foreach by reference");
  return ((void*)0);
 }

 iterator = emalloc(sizeof(date_period_it));

 zend_iterator_init((zend_object_iterator*)iterator);

 Z_ADDREF_P(object);
 ZVAL_OBJ(&iterator->intern.data, Z_OBJ_P(object));
 iterator->intern.funcs = &date_period_it_funcs;
 iterator->object = Z_PHPPERIOD_P(object);
 ZVAL_UNDEF(&iterator->current);

 return (zend_object_iterator*)iterator;
}
