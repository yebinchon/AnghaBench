
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUCCESS ;
 int configuration_hash ;
 int free (int *) ;
 int * php_ini_opened_path ;
 int * php_ini_scanned_files ;
 int zend_hash_destroy (int *) ;

int php_shutdown_config(void)
{
 zend_hash_destroy(&configuration_hash);
 if (php_ini_opened_path) {
  free(php_ini_opened_path);
  php_ini_opened_path = ((void*)0);
 }
 if (php_ini_scanned_files) {
  free(php_ini_scanned_files);
  php_ini_scanned_files = ((void*)0);
 }
 return SUCCESS;
}
