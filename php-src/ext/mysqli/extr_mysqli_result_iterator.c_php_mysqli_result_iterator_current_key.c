
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_2__ {int row_num; } ;
typedef TYPE_1__ php_mysqli_result_iterator ;


 int ZVAL_LONG (int *,int ) ;

__attribute__((used)) static void php_mysqli_result_iterator_current_key(zend_object_iterator *iter, zval *key)
{
 php_mysqli_result_iterator *iterator = (php_mysqli_result_iterator*) iter;

 ZVAL_LONG(key, iterator->row_num);
}
