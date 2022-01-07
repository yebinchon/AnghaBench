
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int php_import_environment_variables (int *) ;

__attribute__((used)) static void php_embed_register_variables(zval *track_vars_array)
{
 php_import_environment_variables(track_vars_array);
}
