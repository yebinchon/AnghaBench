
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct command_ctx {TYPE_2__* cache_dump_cmd; } ;
struct MPContext {struct command_ctx* command_ctx; } ;
struct TYPE_4__ {TYPE_1__* abort; } ;
struct TYPE_3__ {int cancel; } ;


 int assert (int) ;
 int cache_dump_poll (struct MPContext*) ;
 int mp_cancel_trigger (int ) ;

void mp_abort_cache_dumping(struct MPContext *mpctx)
{
    struct command_ctx *ctx = mpctx->command_ctx;

    if (ctx->cache_dump_cmd)
        mp_cancel_trigger(ctx->cache_dump_cmd->abort->cancel);
    cache_dump_poll(mpctx);
    assert(!ctx->cache_dump_cmd);
}
