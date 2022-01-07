
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {int * d_sub; } ;
struct MPContext {int osd; } ;


 int get_order (struct MPContext*,struct track*) ;
 int osd_set_sub (int ,int,int *) ;
 int reset_subtitles (struct MPContext*,struct track*) ;
 int sub_destroy (int *) ;
 int sub_select (int *,int) ;

void uninit_sub(struct MPContext *mpctx, struct track *track)
{
    if (track && track->d_sub) {
        reset_subtitles(mpctx, track);
        sub_select(track->d_sub, 0);
        int order = get_order(mpctx, track);
        osd_set_sub(mpctx->osd, order, ((void*)0));
        sub_destroy(track->d_sub);
        track->d_sub = ((void*)0);
    }
}
