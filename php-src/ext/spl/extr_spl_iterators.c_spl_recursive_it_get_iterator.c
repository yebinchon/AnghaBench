
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
typedef int zend_class_entry ;
struct TYPE_7__ {int * iterators; } ;
typedef TYPE_2__ spl_recursive_it_object ;
struct TYPE_6__ {int * funcs; int data; } ;
struct TYPE_8__ {TYPE_1__ intern; } ;
typedef TYPE_3__ spl_recursive_it_iterator ;


 int E_ERROR ;
 int ZVAL_OBJ (int *,int ) ;
 int Z_ADDREF_P (int *) ;
 int Z_OBJ_P (int *) ;
 TYPE_2__* Z_SPLRECURSIVE_IT_P (int *) ;
 TYPE_3__* emalloc (int) ;
 int spl_ce_RuntimeException ;
 int spl_recursive_it_iterator_funcs ;
 int zend_error (int ,char*) ;
 int zend_iterator_init (int *) ;
 int zend_throw_exception (int ,char*,int ) ;

__attribute__((used)) static zend_object_iterator *spl_recursive_it_get_iterator(zend_class_entry *ce, zval *zobject, int by_ref)
{
 spl_recursive_it_iterator *iterator;
 spl_recursive_it_object *object;

 if (by_ref) {
  zend_throw_exception(spl_ce_RuntimeException, "An iterator cannot be used with foreach by reference", 0);
  return ((void*)0);
 }
 iterator = emalloc(sizeof(spl_recursive_it_iterator));
 object = Z_SPLRECURSIVE_IT_P(zobject);
 if (object->iterators == ((void*)0)) {
  zend_error(E_ERROR, "The object to be iterated is in an invalid state: "
    "the parent constructor has not been called");
 }

 zend_iterator_init((zend_object_iterator*)iterator);

 Z_ADDREF_P(zobject);
 ZVAL_OBJ(&iterator->intern.data, Z_OBJ_P(zobject));
 iterator->intern.funcs = &spl_recursive_it_iterator_funcs;
 return (zend_object_iterator*)iterator;
}
