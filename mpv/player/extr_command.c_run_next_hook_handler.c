
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hook_handler {int type; } ;
struct command_ctx {int num_hooks; struct hook_handler** hooks; } ;
struct MPContext {struct command_ctx* command_ctx; } ;


 int invoke_hook_handler (struct MPContext*,struct hook_handler*) ;
 int mp_wakeup_core (struct MPContext*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int run_next_hook_handler(struct MPContext *mpctx, char *type, int index)
{
    struct command_ctx *cmd = mpctx->command_ctx;

    for (int n = index; n < cmd->num_hooks; n++) {
        struct hook_handler *h = cmd->hooks[n];
        if (strcmp(h->type, type) == 0)
            return invoke_hook_handler(mpctx, h);
    }

    mp_wakeup_core(mpctx);
    return 0;
}
