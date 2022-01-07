
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ini_entries; } ;


 int SUCCESS ;
 int free (int ) ;
 TYPE_1__ fuzzer_module ;
 int php_module_shutdown () ;
 int sapi_shutdown () ;

int fuzzer_shutdown_php()
{
 php_module_shutdown();
 sapi_shutdown();

 free(fuzzer_module.ini_entries);
 return SUCCESS;
}
