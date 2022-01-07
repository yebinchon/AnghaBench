
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int step_frames; int hrseek_active; int vo_chain; } ;


 int MPSEEK_BACKSTEP ;
 int MPSEEK_VERY_EXACT ;
 int queue_seek (struct MPContext*,int ,int ,int ,int ) ;
 int set_pause_state (struct MPContext*,int) ;

void add_step_frame(struct MPContext *mpctx, int dir)
{
    if (!mpctx->vo_chain)
        return;
    if (dir > 0) {
        mpctx->step_frames += 1;
        set_pause_state(mpctx, 0);
    } else if (dir < 0) {
        if (!mpctx->hrseek_active) {
            queue_seek(mpctx, MPSEEK_BACKSTEP, 0, MPSEEK_VERY_EXACT, 0);
            set_pause_state(mpctx, 1);
        }
    }
}
