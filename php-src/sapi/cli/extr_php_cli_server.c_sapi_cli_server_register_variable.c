
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {scalar_t__ (* input_filter ) (int ,char*,char**,int ,size_t*) ;} ;


 int PARSE_SERVER ;
 int php_register_variable_safe (char*,char*,size_t,int *) ;
 TYPE_1__ sapi_module ;
 int strlen (char const*) ;
 scalar_t__ stub1 (int ,char*,char**,int ,size_t*) ;

__attribute__((used)) static void sapi_cli_server_register_variable(zval *track_vars_array, const char *key, const char *val)
{
 char *new_val = (char *)val;
 size_t new_val_len;

 if (((void*)0) == val) {
  return;
 }

 if (sapi_module.input_filter(PARSE_SERVER, (char*)key, &new_val, strlen(val), &new_val_len)) {
  php_register_variable_safe((char *)key, new_val, new_val_len, track_vars_array);
 }
}
