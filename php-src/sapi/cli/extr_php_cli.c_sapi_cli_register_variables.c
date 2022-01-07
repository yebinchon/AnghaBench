
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {scalar_t__ (* input_filter ) (int ,char*,char**,size_t,size_t*) ;} ;


 int PARSE_SERVER ;
 int php_import_environment_variables (int *) ;
 int php_register_variable (char*,char*,int *) ;
 char* php_self ;
 TYPE_1__ sapi_module ;
 char* script_filename ;
 size_t strlen (char*) ;
 scalar_t__ stub1 (int ,char*,char**,size_t,size_t*) ;
 scalar_t__ stub2 (int ,char*,char**,size_t,size_t*) ;
 scalar_t__ stub3 (int ,char*,char**,size_t,size_t*) ;
 scalar_t__ stub4 (int ,char*,char**,size_t,size_t*) ;
 scalar_t__ stub5 (int ,char*,char**,size_t,size_t*) ;

__attribute__((used)) static void sapi_cli_register_variables(zval *track_vars_array)
{
 size_t len;
 char *docroot = "";




 php_import_environment_variables(track_vars_array);


 len = strlen(php_self);
 if (sapi_module.input_filter(PARSE_SERVER, "PHP_SELF", &php_self, len, &len)) {
  php_register_variable("PHP_SELF", php_self, track_vars_array);
 }
 if (sapi_module.input_filter(PARSE_SERVER, "SCRIPT_NAME", &php_self, len, &len)) {
  php_register_variable("SCRIPT_NAME", php_self, track_vars_array);
 }

 len = strlen(script_filename);
 if (sapi_module.input_filter(PARSE_SERVER, "SCRIPT_FILENAME", &script_filename, len, &len)) {
  php_register_variable("SCRIPT_FILENAME", script_filename, track_vars_array);
 }
 if (sapi_module.input_filter(PARSE_SERVER, "PATH_TRANSLATED", &script_filename, len, &len)) {
  php_register_variable("PATH_TRANSLATED", script_filename, track_vars_array);
 }

 len = 0U;
 if (sapi_module.input_filter(PARSE_SERVER, "DOCUMENT_ROOT", &docroot, len, &len)) {
  php_register_variable("DOCUMENT_ROOT", docroot, track_vars_array);
 }
}
