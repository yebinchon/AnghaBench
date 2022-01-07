
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dec_sub {int dummy; } ;
struct MPContext {int num_tracks; TYPE_1__** tracks; } ;
struct TYPE_2__ {struct dec_sub* d_sub; } ;


 int sub_reset (struct dec_sub*) ;
 int term_osd_set_subs (struct MPContext*,int *) ;

void reset_subtitle_state(struct MPContext *mpctx)
{
    for (int n = 0; n < mpctx->num_tracks; n++) {
        struct dec_sub *d_sub = mpctx->tracks[n]->d_sub;
        if (d_sub)
            sub_reset(d_sub);
    }
    term_osd_set_subs(mpctx, ((void*)0));
}
