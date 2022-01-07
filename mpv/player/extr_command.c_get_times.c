
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct track {struct dec_sub* d_sub; } ;
struct sd_times {double start; double end; } ;
struct m_property {int dummy; } ;
struct dec_sub {int dummy; } ;
struct TYPE_2__ {double playback_pts; struct track*** current_track; } ;
typedef TYPE_1__ MPContext ;


 double MP_NOPTS_VALUE ;
 size_t STREAM_SUB ;
 struct sd_times sub_get_times (struct dec_sub*,double) ;

__attribute__((used)) static struct sd_times get_times(void *ctx, struct m_property *prop,
                                int action, void *arg)
{
    struct sd_times res = { .start = MP_NOPTS_VALUE, .end = MP_NOPTS_VALUE };
    MPContext *mpctx = ctx;
    struct track *track = mpctx->current_track[0][STREAM_SUB];
    struct dec_sub *sub = track ? track->d_sub : ((void*)0);
    double pts = mpctx->playback_pts;
    if (!sub || pts == MP_NOPTS_VALUE)
        return res;
    return sub_get_times(sub, pts);
}
