
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* path_translated; } ;


 char DEFAULT_SLASH ;
 int FAILURE ;
 int IS_SLASH (char) ;
 TYPE_1__ SG (int ) ;
 int SUCCESS ;
 int efree (char*) ;
 char* emalloc (size_t) ;
 char* estrndup (char*,size_t) ;
 int lsapi_activate_user_ini () ;
 int memcpy (char*,char*,size_t) ;
 scalar_t__ parse_user_ini ;
 int php_ini_activate_per_dir_config (char*,size_t) ;
 int php_ini_activate_per_host_config (char*,size_t) ;
 scalar_t__ php_ini_has_per_dir_config () ;
 scalar_t__ php_ini_has_per_host_config () ;
 int request_info ;
 char* sapi_lsapi_getenv (char*,int ) ;
 size_t strlen (char*) ;
 size_t zend_dirname (char*,size_t) ;
 int zend_str_tolower (char*,size_t) ;

__attribute__((used)) static int sapi_lsapi_activate()
{
    char *path, *server_name;
    size_t path_len, server_name_len;


    if (!SG(request_info).path_translated) {
            return FAILURE;
    }

    if (php_ini_has_per_host_config()) {
        server_name = sapi_lsapi_getenv("SERVER_NAME", 0);

        if (server_name) {
                server_name_len = strlen(server_name);
                server_name = estrndup(server_name, server_name_len);
                zend_str_tolower(server_name, server_name_len);
                php_ini_activate_per_host_config(server_name, server_name_len);
                efree(server_name);
        }
    }

    if (php_ini_has_per_dir_config()) {

        path_len = strlen(SG(request_info).path_translated);


        if (!IS_SLASH(SG(request_info).path_translated[path_len])) {
            path = emalloc(path_len + 2);
            memcpy(path, SG(request_info).path_translated, path_len + 1);
            path_len = zend_dirname(path, path_len);
            path[path_len++] = DEFAULT_SLASH;
        } else {
            path = estrndup(SG(request_info).path_translated, path_len);
            path_len = zend_dirname(path, path_len);
        }
        path[path_len] = 0;


        php_ini_activate_per_dir_config(path, path_len);

        efree(path);
    }

    if (parse_user_ini && lsapi_activate_user_ini() == FAILURE) {
        return FAILURE;
    }
    return SUCCESS;
}
