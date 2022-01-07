
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {int name; } ;
typedef TYPE_1__ php_output_handler ;


 int add_next_index_str (int *,int ) ;
 int zend_string_copy (int ) ;

__attribute__((used)) static int php_output_stack_apply_list(void *h, void *z)
{
 php_output_handler *handler = *(php_output_handler **) h;
 zval *array = (zval *) z;

 add_next_index_str(array, zend_string_copy(handler->name));
 return 0;
}
