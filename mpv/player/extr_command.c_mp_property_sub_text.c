
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct track {struct dec_sub* d_sub; } ;
struct m_property {int dummy; } ;
struct dec_sub {int dummy; } ;
struct TYPE_2__ {double playback_pts; struct track*** current_track; } ;
typedef TYPE_1__ MPContext ;


 double MP_NOPTS_VALUE ;
 int M_PROPERTY_UNAVAILABLE ;
 size_t STREAM_SUB ;
 int m_property_strdup_ro (int,void*,char*) ;
 char* sub_get_text (struct dec_sub*,double) ;

__attribute__((used)) static int mp_property_sub_text(void *ctx, struct m_property *prop,
                                int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct track *track = mpctx->current_track[0][STREAM_SUB];
    struct dec_sub *sub = track ? track->d_sub : ((void*)0);
    double pts = mpctx->playback_pts;
    if (!sub || pts == MP_NOPTS_VALUE)
        return M_PROPERTY_UNAVAILABLE;

    char *text = sub_get_text(sub, pts);
    if (!text)
        text = "";

    return m_property_strdup_ro(action, arg, text);
}
