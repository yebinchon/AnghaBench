
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {scalar_t__ d_sub; } ;
struct MPContext {int play_dir; } ;


 int sub_reset (scalar_t__) ;
 int sub_set_play_dir (scalar_t__,int ) ;
 int term_osd_set_subs (struct MPContext*,int *) ;

__attribute__((used)) static void reset_subtitles(struct MPContext *mpctx, struct track *track)
{
    if (track->d_sub) {
        sub_reset(track->d_sub);
        sub_set_play_dir(track->d_sub, mpctx->play_dir);
    }
    term_osd_set_subs(mpctx, ((void*)0));
}
