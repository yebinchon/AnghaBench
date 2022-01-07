
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_ctx {int hotplug; int cache_dump_cmd; } ;
struct MPContext {struct command_ctx* command_ctx; } ;


 int ao_hotplug_destroy (int ) ;
 int assert (int) ;
 int overlay_uninit (struct MPContext*) ;
 int talloc_free (struct command_ctx*) ;

void command_uninit(struct MPContext *mpctx)
{
    struct command_ctx *ctx = mpctx->command_ctx;

    assert(!ctx->cache_dump_cmd);

    overlay_uninit(mpctx);
    ao_hotplug_destroy(ctx->hotplug);

    talloc_free(mpctx->command_ctx);
    mpctx->command_ctx = ((void*)0);
}
