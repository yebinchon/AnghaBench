
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_ctx {scalar_t__ hotplug; } ;
struct MPContext {int global; struct command_ctx* command_ctx; } ;


 scalar_t__ ao_hotplug_create (int ,int ,struct MPContext*) ;
 int mp_wakeup_core_cb ;

__attribute__((used)) static void create_hotplug(struct MPContext *mpctx)
{
    struct command_ctx *cmd = mpctx->command_ctx;

    if (!cmd->hotplug) {
        cmd->hotplug = ao_hotplug_create(mpctx->global, mp_wakeup_core_cb,
                                         mpctx);
    }
}
