
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sapi_module_struct ;


 scalar_t__ FAILURE ;
 int SUCCESS ;
 int php_apache_module ;
 scalar_t__ php_module_startup (int *,int *,int) ;

__attribute__((used)) static int php_apache2_startup(sapi_module_struct *sapi_module)
{
 if (php_module_startup(sapi_module, &php_apache_module, 1)==FAILURE) {
  return FAILURE;
 }
 return SUCCESS;
}
