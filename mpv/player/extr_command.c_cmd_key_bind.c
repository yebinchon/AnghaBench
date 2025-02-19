
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_cmd_ctx {int success; TYPE_2__* args; struct MPContext* mpctx; } ;
struct MPContext {int input; } ;
struct TYPE_3__ {char* s; } ;
struct TYPE_4__ {TYPE_1__ v; } ;


 int MP_ERR (struct MPContext*,char*,char*) ;
 int bstr0 (char const*) ;
 int mp_input_bind_key (int ,int,int ) ;
 int mp_input_get_key_from_name (char*) ;

__attribute__((used)) static void cmd_key_bind(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    int code = mp_input_get_key_from_name(cmd->args[0].v.s);
    if (code < 0) {
        MP_ERR(mpctx, "%s is not a valid input name.\n", cmd->args[0].v.s);
        cmd->success = 0;
        return;
    }
    const char *target_cmd = cmd->args[1].v.s;
    mp_input_bind_key(mpctx->input, code, bstr0(target_cmd));
}
