
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ctrl; } ;
typedef TYPE_1__ ENGINE ;


 int ENGINE_CMD_FLAG_NO_INPUT ;
 int ENGINE_CMD_FLAG_NUMERIC ;
 int ENGINE_CMD_FLAG_STRING ;
 int ENGINE_CTRL_GET_CMD_FLAGS ;
 int ENGINE_CTRL_GET_CMD_FROM_NAME ;
 int ENGINE_F_ENGINE_CTRL_CMD_STRING ;
 int ENGINE_R_ARGUMENT_IS_NOT_A_NUMBER ;
 int ENGINE_R_CMD_NOT_EXECUTABLE ;
 int ENGINE_R_COMMAND_TAKES_INPUT ;
 int ENGINE_R_COMMAND_TAKES_NO_INPUT ;
 int ENGINE_R_INTERNAL_LIST_ERROR ;
 int ENGINE_R_INVALID_CMD_NAME ;
 int ENGINE_cmd_is_executable (TYPE_1__*,int) ;
 int ENGINE_ctrl (TYPE_1__*,int,long,void*,int *) ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int ERR_clear_error () ;
 long strtol (char const*,char**,int) ;

int ENGINE_ctrl_cmd_string(ENGINE *e, const char *cmd_name, const char *arg,
                           int cmd_optional)
{
    int num, flags;
    long l;
    char *ptr;

    if (e == ((void*)0) || cmd_name == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_CTRL_CMD_STRING, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if (e->ctrl == ((void*)0)
        || (num = ENGINE_ctrl(e, ENGINE_CTRL_GET_CMD_FROM_NAME,
                              0, (void *)cmd_name, ((void*)0))) <= 0) {
        if (cmd_optional) {
            ERR_clear_error();
            return 1;
        }
        ENGINEerr(ENGINE_F_ENGINE_CTRL_CMD_STRING, ENGINE_R_INVALID_CMD_NAME);
        return 0;
    }
    if (!ENGINE_cmd_is_executable(e, num)) {
        ENGINEerr(ENGINE_F_ENGINE_CTRL_CMD_STRING,
                  ENGINE_R_CMD_NOT_EXECUTABLE);
        return 0;
    }

    flags = ENGINE_ctrl(e, ENGINE_CTRL_GET_CMD_FLAGS, num, ((void*)0), ((void*)0));
    if (flags < 0) {




        ENGINEerr(ENGINE_F_ENGINE_CTRL_CMD_STRING,
                  ENGINE_R_INTERNAL_LIST_ERROR);
        return 0;
    }



    if (flags & ENGINE_CMD_FLAG_NO_INPUT) {
        if (arg != ((void*)0)) {
            ENGINEerr(ENGINE_F_ENGINE_CTRL_CMD_STRING,
                      ENGINE_R_COMMAND_TAKES_NO_INPUT);
            return 0;
        }






        if (ENGINE_ctrl(e, num, 0, (void *)arg, ((void*)0)) > 0)
            return 1;
        return 0;
    }

    if (arg == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_CTRL_CMD_STRING,
                  ENGINE_R_COMMAND_TAKES_INPUT);
        return 0;
    }

    if (flags & ENGINE_CMD_FLAG_STRING) {

        if (ENGINE_ctrl(e, num, 0, (void *)arg, ((void*)0)) > 0)
            return 1;
        return 0;
    }






    if (!(flags & ENGINE_CMD_FLAG_NUMERIC)) {
        ENGINEerr(ENGINE_F_ENGINE_CTRL_CMD_STRING,
                  ENGINE_R_INTERNAL_LIST_ERROR);
        return 0;
    }
    l = strtol(arg, &ptr, 10);
    if ((arg == ptr) || (*ptr != '\0')) {
        ENGINEerr(ENGINE_F_ENGINE_CTRL_CMD_STRING,
                  ENGINE_R_ARGUMENT_IS_NOT_A_NUMBER);
        return 0;
    }




    if (ENGINE_ctrl(e, num, l, ((void*)0), ((void*)0)) > 0)
        return 1;
    return 0;
}
