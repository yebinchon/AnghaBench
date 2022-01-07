
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd_ctx {struct MPContext* mpctx; } ;
struct MPContext {scalar_t__ stop_play; int playlist; } ;


 scalar_t__ PT_QUIT ;
 scalar_t__ PT_STOP ;
 int mp_wakeup_core (struct MPContext*) ;
 int playlist_clear (int ) ;

__attribute__((used)) static void cmd_stop(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    playlist_clear(mpctx->playlist);
    if (mpctx->stop_play != PT_QUIT)
        mpctx->stop_play = PT_STOP;
    mp_wakeup_core(mpctx);
}
