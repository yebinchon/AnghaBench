
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {char* request_uri; } ;


 int LSAPI_ForeachEnv (int (*) (char*,int,char*,int ,int *),int *) ;
 int LSAPI_ForeachHeader (int (*) (char*,int,char*,int ,int *),int *) ;
 TYPE_1__ SG (int ) ;
 int add_variable (char*,int,char*,int ,int *) ;
 int litespeed_php_import_environment_variables (int *) ;
 scalar_t__ lsapi_mode ;
 int php_import_environment_variables (int *) ;
 int php_register_variable (char*,char*,int *) ;
 int request_info ;
 char* script_filename ;
 int strlen (char*) ;

__attribute__((used)) static void sapi_lsapi_register_variables(zval *track_vars_array)
{
    char * php_self = "";
    if ( lsapi_mode ) {
        if ( (SG(request_info).request_uri ) )
            php_self = (SG(request_info).request_uri );

        litespeed_php_import_environment_variables(track_vars_array);

        LSAPI_ForeachHeader( add_variable, track_vars_array );
        LSAPI_ForeachEnv( add_variable, track_vars_array );
        add_variable("PHP_SELF", 8, php_self, strlen( php_self ), track_vars_array );
    } else {
        php_import_environment_variables(track_vars_array);

        php_register_variable("PHP_SELF", php_self, track_vars_array);
        php_register_variable("SCRIPT_NAME", php_self, track_vars_array);
        php_register_variable("SCRIPT_FILENAME", script_filename, track_vars_array);
        php_register_variable("PATH_TRANSLATED", script_filename, track_vars_array);
        php_register_variable("DOCUMENT_ROOT", "", track_vars_array);

    }
}
