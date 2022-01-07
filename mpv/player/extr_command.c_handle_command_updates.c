
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_ctx {scalar_t__ hotplug; } ;
struct MPContext {struct command_ctx* command_ctx; } ;


 scalar_t__ ao_hotplug_check_update (scalar_t__) ;
 int cache_dump_poll (struct MPContext*) ;
 int mp_notify_property (struct MPContext*,char*) ;

void handle_command_updates(struct MPContext *mpctx)
{
    struct command_ctx *ctx = mpctx->command_ctx;



    if (ctx->hotplug && ao_hotplug_check_update(ctx->hotplug))
        mp_notify_property(mpctx, "audio-device-list");


    cache_dump_poll(mpctx);
}
