
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_2__ {int current_row; } ;
typedef TYPE_1__ php_mysqli_result_iterator ;



__attribute__((used)) static zval *php_mysqli_result_iterator_current_data(zend_object_iterator *iter)
{
 php_mysqli_result_iterator *iterator = (php_mysqli_result_iterator*) iter;

 return &iterator->current_row;
}
