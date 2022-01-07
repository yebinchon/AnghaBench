
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct hook_handler {scalar_t__ seq; int active; int type; int client; } ;
struct command_ctx {int num_hooks; struct hook_handler** hooks; } ;
struct MPContext {struct command_ctx* command_ctx; } ;


 int MPV_ERROR_INVALID_PARAMETER ;
 int MP_ERR (struct MPContext*,char*) ;
 int run_next_hook_handler (struct MPContext*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

int mp_hook_continue(struct MPContext *mpctx, char *client, uint64_t id)
{
    struct command_ctx *cmd = mpctx->command_ctx;

    for (int n = 0; n < cmd->num_hooks; n++) {
        struct hook_handler *h = cmd->hooks[n];
        if (strcmp(h->client, client) == 0 && h->seq == id) {
            if (!h->active)
                break;
            h->active = 0;
            return run_next_hook_handler(mpctx, h->type, n + 1);
        }
    }

    MP_ERR(mpctx, "invalid hook API usage\n");
    return MPV_ERROR_INVALID_PARAMETER;
}
