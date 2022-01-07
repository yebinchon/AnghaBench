
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_output_context ;


 int SUCCESS ;

__attribute__((used)) static int php_output_handler_devnull_func(void **handler_context, php_output_context *output_context)
{
 return SUCCESS;
}
