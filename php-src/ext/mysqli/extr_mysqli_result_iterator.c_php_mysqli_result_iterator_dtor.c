
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {int current_row; TYPE_1__ intern; } ;
typedef TYPE_2__ php_mysqli_result_iterator ;


 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void php_mysqli_result_iterator_dtor(zend_object_iterator *iter)
{
 php_mysqli_result_iterator *iterator = (php_mysqli_result_iterator*)iter;


 zval_ptr_dtor(&iterator->intern.data);
 zval_ptr_dtor(&iterator->current_row);
}
