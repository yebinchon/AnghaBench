
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_cmd_ctx {int success; TYPE_1__* cmd; struct MPContext* mpctx; } ;
struct MPContext {int step_frames; int playback_initialized; } ;
struct TYPE_2__ {scalar_t__ repeated; scalar_t__ is_up; scalar_t__ is_up_down; } ;


 int add_step_frame (struct MPContext*,int) ;
 int set_pause_state (struct MPContext*,int) ;

__attribute__((used)) static void cmd_frame_step(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    if (!mpctx->playback_initialized) {
        cmd->success = 0;
        return;
    }

    if (cmd->cmd->is_up_down) {
        if (cmd->cmd->is_up) {
            if (mpctx->step_frames < 1)
                set_pause_state(mpctx, 1);
        } else {
            if (cmd->cmd->repeated) {
                set_pause_state(mpctx, 0);
            } else {
                add_step_frame(mpctx, 1);
            }
        }
    } else {
        add_step_frame(mpctx, 1);
    }
}
