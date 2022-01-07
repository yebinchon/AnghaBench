
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {scalar_t__ ab_loop_clip; } ;


 double MP_NOPTS_VALUE ;
 scalar_t__ get_ab_loop_times (struct MPContext*,double*) ;
 double get_play_end_pts_setting (struct MPContext*) ;

double get_play_end_pts(struct MPContext *mpctx)
{
    double end = get_play_end_pts_setting(mpctx);
    double ab[2];
    if (mpctx->ab_loop_clip && get_ab_loop_times(mpctx, ab)) {
        if (end == MP_NOPTS_VALUE || end > ab[1])
            end = ab[1];
    }
    return end;
}
