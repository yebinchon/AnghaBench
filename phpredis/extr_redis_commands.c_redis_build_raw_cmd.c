
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {char* c; int len; int member_0; } ;
typedef TYPE_1__ smart_string ;


 int E_WARNING ;
 int FAILURE ;



 int SUCCESS ;
 int Z_DVAL (int ) ;
 int Z_LVAL (int ) ;
 int Z_STRLEN (int ) ;
 int Z_STRVAL (int ) ;
 int Z_TYPE (int ) ;
 int efree (char*) ;
 int php_error_docref (int *,int ,char*) ;
 int redis_cmd_append_sstr (TYPE_1__*,int ,int ) ;
 int redis_cmd_append_sstr_dbl (TYPE_1__*,int ) ;
 int redis_cmd_append_sstr_long (TYPE_1__*,int ) ;
 int redis_cmd_init_sstr (TYPE_1__*,int,int ,int ) ;

int redis_build_raw_cmd(zval *z_args, int argc, char **cmd, int *cmd_len)
{
    smart_string cmdstr = {0};
    int i;


    if (Z_TYPE(z_args[0]) != 128) {
        php_error_docref(((void*)0), E_WARNING,
            "When sending a 'raw' command, the first argument must be a string!");
        return FAILURE;
    }


    redis_cmd_init_sstr(&cmdstr, argc-1, Z_STRVAL(z_args[0]), Z_STRLEN(z_args[0]));

    for (i = 1; i < argc; i++) {
       switch (Z_TYPE(z_args[i])) {
            case 128:
                redis_cmd_append_sstr(&cmdstr, Z_STRVAL(z_args[i]),
                    Z_STRLEN(z_args[i]));
                break;
            case 129:
                redis_cmd_append_sstr_long(&cmdstr,Z_LVAL(z_args[i]));
                break;
            case 130:
                redis_cmd_append_sstr_dbl(&cmdstr,Z_DVAL(z_args[i]));
                break;
            default:
                php_error_docref(((void*)0), E_WARNING,
                    "Raw command arguments must be scalar values!");
                efree(cmdstr.c);
                return FAILURE;
        }
    }


    *cmd = cmdstr.c;
    *cmd_len = cmdstr.len;

    return SUCCESS;
}
