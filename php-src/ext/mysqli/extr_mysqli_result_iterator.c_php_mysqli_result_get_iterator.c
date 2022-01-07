
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int * funcs; int data; } ;
typedef TYPE_1__ zend_object_iterator ;
typedef int zend_class_entry ;
struct TYPE_7__ {int row_num; TYPE_1__ intern; int result; } ;
typedef TYPE_2__ php_mysqli_result_iterator ;


 int E_ERROR ;
 int ZVAL_OBJ (int *,int ) ;
 int Z_ADDREF_P (int *) ;
 int Z_MYSQLI_P (int *) ;
 int Z_OBJ_P (int *) ;
 TYPE_2__* ecalloc (int,int) ;
 int php_mysqli_result_iterator_funcs ;
 int zend_error (int ,char*) ;
 int zend_iterator_init (TYPE_1__*) ;

zend_object_iterator *php_mysqli_result_get_iterator(zend_class_entry *ce, zval *object, int by_ref)
{
 php_mysqli_result_iterator *iterator;

 if (by_ref) {
  zend_error(E_ERROR, "An iterator cannot be used with foreach by reference");
 }
 iterator = ecalloc(1, sizeof(php_mysqli_result_iterator));
 zend_iterator_init(&iterator->intern);

 Z_ADDREF_P(object);
 ZVAL_OBJ(&iterator->intern.data, Z_OBJ_P(object));
 iterator->intern.funcs = &php_mysqli_result_iterator_funcs;
 iterator->result = Z_MYSQLI_P(object);
 iterator->row_num = -1;

 return &iterator->intern;
}
