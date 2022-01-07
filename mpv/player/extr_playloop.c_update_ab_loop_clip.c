
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int ab_loop_clip; double play_dir; } ;


 double MP_NOPTS_VALUE ;
 scalar_t__ get_ab_loop_times (struct MPContext*,double*) ;
 double get_current_time (struct MPContext*) ;

void update_ab_loop_clip(struct MPContext *mpctx)
{
    double pts = get_current_time(mpctx);
    double ab[2];
    mpctx->ab_loop_clip = pts != MP_NOPTS_VALUE &&
                          get_ab_loop_times(mpctx, ab) &&
                          pts * mpctx->play_dir <= ab[1] * mpctx->play_dir;
}
