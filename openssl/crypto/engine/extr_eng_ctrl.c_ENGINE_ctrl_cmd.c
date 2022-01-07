
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ctrl; } ;
typedef TYPE_1__ ENGINE ;


 int ENGINE_CTRL_GET_CMD_FROM_NAME ;
 int ENGINE_F_ENGINE_CTRL_CMD ;
 int ENGINE_R_INVALID_CMD_NAME ;
 scalar_t__ ENGINE_ctrl (TYPE_1__*,int,long,void*,void (*) ()) ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int ERR_clear_error () ;

int ENGINE_ctrl_cmd(ENGINE *e, const char *cmd_name,
                    long i, void *p, void (*f) (void), int cmd_optional)
{
    int num;

    if (e == ((void*)0) || cmd_name == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_CTRL_CMD, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if (e->ctrl == ((void*)0)
        || (num = ENGINE_ctrl(e, ENGINE_CTRL_GET_CMD_FROM_NAME,
                              0, (void *)cmd_name, ((void*)0))) <= 0) {
        if (cmd_optional) {
            ERR_clear_error();
            return 1;
        }
        ENGINEerr(ENGINE_F_ENGINE_CTRL_CMD, ENGINE_R_INVALID_CMD_NAME);
        return 0;
    }




    if (ENGINE_ctrl(e, num, i, p, f) > 0)
        return 1;
    return 0;
}
