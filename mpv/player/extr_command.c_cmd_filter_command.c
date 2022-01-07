
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mp_output_chain {int dummy; } ;
struct mp_filter_command {int arg; int cmd; int type; } ;
struct mp_cmd_ctx {int success; TYPE_4__* args; scalar_t__ priv; struct MPContext* mpctx; } ;
struct MPContext {TYPE_2__* ao_chain; TYPE_1__* vo_chain; } ;
struct TYPE_7__ {int s; } ;
struct TYPE_8__ {TYPE_3__ v; } ;
struct TYPE_6__ {struct mp_output_chain* filter; } ;
struct TYPE_5__ {struct mp_output_chain* filter; } ;


 int MP_FILTER_COMMAND_TEXT ;
 int STREAM_AUDIO ;
 int STREAM_VIDEO ;
 int mp_output_chain_command (struct mp_output_chain*,int ,struct mp_filter_command*) ;

__attribute__((used)) static void cmd_filter_command(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int type = *(int *)cmd->priv;

    struct mp_output_chain *chain = ((void*)0);
    if (type == STREAM_VIDEO)
        chain = mpctx->vo_chain ? mpctx->vo_chain->filter : ((void*)0);
    if (type == STREAM_AUDIO)
        chain = mpctx->ao_chain ? mpctx->ao_chain->filter : ((void*)0);
    if (!chain) {
        cmd->success = 0;
        return;
    }
    struct mp_filter_command filter_cmd = {
        .type = MP_FILTER_COMMAND_TEXT,
        .cmd = cmd->args[1].v.s,
        .arg = cmd->args[2].v.s,
    };
    cmd->success = mp_output_chain_command(chain, cmd->args[0].v.s, &filter_cmd);
}
