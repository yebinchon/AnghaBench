
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_cmd_ctx {TYPE_3__* args; struct MPContext* mpctx; } ;
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_5__ {int s; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct TYPE_4__ {int * ab_loop; } ;


 int run_dump_cmd (struct mp_cmd_ctx*,int ,int ,int ) ;

__attribute__((used)) static void cmd_dump_cache_ab(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    run_dump_cmd(cmd, mpctx->opts->ab_loop[0], mpctx->opts->ab_loop[1],
                 cmd->args[0].v.s);
}
