
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int osd; } ;


 scalar_t__ osd_get_render_subs_in_filter (int ) ;
 int update_subtitles (struct MPContext*,double) ;

__attribute__((used)) static void filter_update_subtitles(void *ctx, double pts)
{
    struct MPContext *mpctx = ctx;

    if (osd_get_render_subs_in_filter(mpctx->osd))
        update_subtitles(mpctx, pts);
}
