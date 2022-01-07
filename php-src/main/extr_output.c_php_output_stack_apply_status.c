
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_output_handler ;


 int add_next_index_zval (int *,int ) ;
 int php_output_handler_status (int *,int *) ;

__attribute__((used)) static int php_output_stack_apply_status(void *h, void *z)
{
 php_output_handler *handler = *(php_output_handler **) h;
 zval arr, *array = (zval *) z;

 add_next_index_zval(array, php_output_handler_status(handler, &arr));

 return 0;
}
