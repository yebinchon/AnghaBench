
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct MPContext {char* term_osd_subs; TYPE_2__* opts; scalar_t__ video_out; } ;
struct TYPE_4__ {TYPE_1__* subs_rend; } ;
struct TYPE_3__ {int sub_visibility; } ;


 scalar_t__ strcmp (char*,char const*) ;
 int talloc_free (char*) ;
 char* talloc_strdup (struct MPContext*,char const*) ;
 int term_osd_update (struct MPContext*) ;

void term_osd_set_subs(struct MPContext *mpctx, const char *text)
{
    if (mpctx->video_out || !text || !mpctx->opts->subs_rend->sub_visibility)
        text = "";
    if (strcmp(mpctx->term_osd_subs ? mpctx->term_osd_subs : "", text) == 0)
        return;
    talloc_free(mpctx->term_osd_subs);
    mpctx->term_osd_subs = talloc_strdup(mpctx, text);
    term_osd_update(mpctx);
}
