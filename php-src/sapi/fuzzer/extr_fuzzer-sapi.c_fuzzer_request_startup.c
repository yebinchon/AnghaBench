
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIGG ;


 scalar_t__ FAILURE ;
 int SUCCESS ;
 int php_module_shutdown () ;
 scalar_t__ php_request_startup () ;

int fuzzer_request_startup()
{
 if (php_request_startup() == FAILURE) {
  php_module_shutdown();
  return FAILURE;
 }







 return SUCCESS;
}
