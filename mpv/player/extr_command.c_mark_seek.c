
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_ctx {double last_seek_time; scalar_t__ last_seek_pts; } ;
struct MPContext {struct command_ctx* command_ctx; } ;


 scalar_t__ MP_NOPTS_VALUE ;
 scalar_t__ get_current_time (struct MPContext*) ;
 double mp_time_sec () ;

void mark_seek(struct MPContext *mpctx)
{
    struct command_ctx *cmd = mpctx->command_ctx;
    double now = mp_time_sec();
    if (now > cmd->last_seek_time + 2.0 || cmd->last_seek_pts == MP_NOPTS_VALUE)
        cmd->last_seek_pts = get_current_time(mpctx);
    cmd->last_seek_time = now;
}
