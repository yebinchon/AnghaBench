
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd_ctx {int completed; int result; scalar_t__ abort; int mpctx; int (* on_completion ) (struct mp_cmd_ctx*) ;int success; } ;


 int mp_abort_remove (int ,scalar_t__) ;
 int mpv_free_node_contents (int *) ;
 int stub1 (struct mp_cmd_ctx*) ;
 int talloc_free (struct mp_cmd_ctx*) ;

void mp_cmd_ctx_complete(struct mp_cmd_ctx *cmd)
{
    cmd->completed = 1;
    if (!cmd->success)
        mpv_free_node_contents(&cmd->result);
    if (cmd->on_completion)
        cmd->on_completion(cmd);
    if (cmd->abort)
        mp_abort_remove(cmd->mpctx, cmd->abort);
    mpv_free_node_contents(&cmd->result);
    talloc_free(cmd);
}
