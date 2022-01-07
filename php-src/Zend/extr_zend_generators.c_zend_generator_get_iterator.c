
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
struct TYPE_12__ {int data; int * funcs; } ;
typedef TYPE_4__ zend_object_iterator ;
struct TYPE_13__ {TYPE_4__* iterator; TYPE_3__* execute_data; } ;
typedef TYPE_5__ zend_generator ;
typedef int zend_class_entry ;
struct TYPE_11__ {TYPE_2__* func; } ;
struct TYPE_9__ {int fn_flags; } ;
struct TYPE_10__ {TYPE_1__ op_array; } ;


 scalar_t__ UNEXPECTED (int) ;
 int ZEND_ACC_RETURN_REFERENCE ;
 int ZVAL_OBJ (int *,scalar_t__) ;
 int Z_ADDREF_P (int *) ;
 scalar_t__ Z_OBJ_P (int *) ;
 TYPE_4__* emalloc (int) ;
 int zend_generator_iterator_functions ;
 int zend_iterator_init (TYPE_4__*) ;
 int zend_throw_exception (int *,char*,int ) ;

zend_object_iterator *zend_generator_get_iterator(zend_class_entry *ce, zval *object, int by_ref)
{
 zend_object_iterator *iterator;
 zend_generator *generator = (zend_generator*)Z_OBJ_P(object);

 if (!generator->execute_data) {
  zend_throw_exception(((void*)0), "Cannot traverse an already closed generator", 0);
  return ((void*)0);
 }

 if (UNEXPECTED(by_ref) && !(generator->execute_data->func->op_array.fn_flags & ZEND_ACC_RETURN_REFERENCE)) {
  zend_throw_exception(((void*)0), "You can only iterate a generator by-reference if it declared that it yields by-reference", 0);
  return ((void*)0);
 }

 iterator = generator->iterator = emalloc(sizeof(zend_object_iterator));

 zend_iterator_init(iterator);

 iterator->funcs = &zend_generator_iterator_functions;
 Z_ADDREF_P(object);
 ZVAL_OBJ(&iterator->data, Z_OBJ_P(object));

 return iterator;
}
