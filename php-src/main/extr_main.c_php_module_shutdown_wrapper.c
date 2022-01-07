
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sapi_module_struct ;


 int SUCCESS ;
 int php_module_shutdown () ;

int php_module_shutdown_wrapper(sapi_module_struct *sapi_globals)
{
 php_module_shutdown();
 return SUCCESS;
}
