
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_2__ {int current_row; } ;
typedef TYPE_1__ php_mysqli_result_iterator ;


 int FAILURE ;
 scalar_t__ IS_ARRAY ;
 int SUCCESS ;
 scalar_t__ Z_TYPE (int ) ;

__attribute__((used)) static int php_mysqli_result_iterator_valid(zend_object_iterator *iter)
{
 php_mysqli_result_iterator *iterator = (php_mysqli_result_iterator*) iter;

 return Z_TYPE(iterator->current_row) == IS_ARRAY ? SUCCESS : FAILURE;
}
