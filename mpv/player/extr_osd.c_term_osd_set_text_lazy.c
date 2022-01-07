
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {int term_osd_text; TYPE_1__* opts; scalar_t__ video_out; } ;
struct TYPE_2__ {int term_osd; int video_osd; } ;


 int talloc_free (int ) ;
 int talloc_strdup (struct MPContext*,char const*) ;

__attribute__((used)) static void term_osd_set_text_lazy(struct MPContext *mpctx, const char *text)
{
    bool video_osd = mpctx->video_out && mpctx->opts->video_osd;
    if ((video_osd && mpctx->opts->term_osd != 1) || !text)
        text = "";
    talloc_free(mpctx->term_osd_text);
    mpctx->term_osd_text = talloc_strdup(mpctx, text);
}
