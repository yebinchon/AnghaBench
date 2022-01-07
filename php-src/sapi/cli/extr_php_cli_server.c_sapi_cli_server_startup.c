
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;
typedef int sapi_module_struct ;
typedef scalar_t__ pid_t ;


 scalar_t__ FAILURE ;
 int SUCCESS ;
 int ZEND_ATOL (int,char*) ;
 scalar_t__* calloc (int,int) ;
 int cli_server_module_entry ;
 scalar_t__ fork () ;
 int fprintf (int ,char*) ;
 char* getenv (char*) ;
 int getpid () ;
 int php_cli_server_master ;
 scalar_t__* php_cli_server_workers ;
 int php_cli_server_workers_max ;
 scalar_t__ php_module_startup (int *,int *,int) ;
 int stderr ;

__attribute__((used)) static int sapi_cli_server_startup(sapi_module_struct *sapi_module)
{
 char *workers;

 if (php_module_startup(sapi_module, &cli_server_module_entry, 1) == FAILURE) {
  return FAILURE;
 }

 if ((workers = getenv("PHP_CLI_SERVER_WORKERS"))) {

  fprintf(stderr, "platform does not support SO_REUSEPORT, cannot create workers\n");
 }

 return SUCCESS;
}
