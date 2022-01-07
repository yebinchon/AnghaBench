
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int smart_string ;


 scalar_t__ IS_STRING ;
 int REDIS_CMD_INIT_SSTR_STATIC (int *,int,char*) ;
 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int Z_STRLEN (int ) ;
 char* Z_STRVAL (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int redis_cmd_append_sstr (int *,char*,int) ;
 int strcasecmp (char*,char*) ;
 int zend_string_release (int *) ;
 int * zval_get_string (int *) ;

smart_string *
redis_build_script_cmd(smart_string *cmd, int argc, zval *z_args)
{
    int i;
    zend_string *zstr;

    if (Z_TYPE(z_args[0]) != IS_STRING) {
        return ((void*)0);
    }

    if (!strcasecmp(Z_STRVAL(z_args[0]), "flush") || !strcasecmp(Z_STRVAL(z_args[0]), "kill")) {

        REDIS_CMD_INIT_SSTR_STATIC(cmd, argc, "SCRIPT");
        redis_cmd_append_sstr(cmd, Z_STRVAL(z_args[0]), Z_STRLEN(z_args[0]));
    } else if (!strcasecmp(Z_STRVAL(z_args[0]), "load")) {


        if (argc < 2 || Z_TYPE(z_args[1]) != IS_STRING || Z_STRLEN(z_args[1]) < 1) {
            return ((void*)0);
        }

        REDIS_CMD_INIT_SSTR_STATIC(cmd, argc, "SCRIPT");
        redis_cmd_append_sstr(cmd, "LOAD", sizeof("LOAD") - 1);
        redis_cmd_append_sstr(cmd, Z_STRVAL(z_args[1]), Z_STRLEN(z_args[1]));
    } else if (!strcasecmp(Z_STRVAL(z_args[0]), "exists")) {

        if (argc < 2) {
            return ((void*)0);
        }

        REDIS_CMD_INIT_SSTR_STATIC(cmd, argc, "SCRIPT");
        redis_cmd_append_sstr(cmd, "EXISTS", sizeof("EXISTS") - 1);

        for (i = 1; i < argc; ++i) {
            zstr = zval_get_string(&z_args[i]);
            redis_cmd_append_sstr(cmd, ZSTR_VAL(zstr), ZSTR_LEN(zstr));
            zend_string_release(zstr);
        }
    } else {

        return ((void*)0);
    }
    return cmd;
}
