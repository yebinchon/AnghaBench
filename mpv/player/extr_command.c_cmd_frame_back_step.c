
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd_ctx {int success; struct MPContext* mpctx; } ;
struct MPContext {int playback_initialized; } ;


 int add_step_frame (struct MPContext*,int) ;

__attribute__((used)) static void cmd_frame_back_step(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    if (!mpctx->playback_initialized) {
        cmd->success = 0;
        return;
    }

    add_step_frame(mpctx, -1);
}
