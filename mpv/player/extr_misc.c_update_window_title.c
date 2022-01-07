
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {char* last_window_title; scalar_t__ ao; scalar_t__ video_out; TYPE_1__* opts; } ;
struct TYPE_2__ {int wintitle; } ;


 int AOCONTROL_UPDATE_STREAM_TITLE ;
 int VOCTRL_UPDATE_WINDOW_TITLE ;
 int ao_control (scalar_t__,int ,char*) ;
 char* mp_property_expand_string (struct MPContext*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int talloc_free (char*) ;
 char* talloc_steal (struct MPContext*,char*) ;
 int vo_control (scalar_t__,int ,char*) ;

void update_window_title(struct MPContext *mpctx, bool force)
{
    if (!mpctx->video_out && !mpctx->ao) {
        talloc_free(mpctx->last_window_title);
        mpctx->last_window_title = ((void*)0);
        return;
    }
    char *title = mp_property_expand_string(mpctx, mpctx->opts->wintitle);
    if (!mpctx->last_window_title || force ||
        strcmp(title, mpctx->last_window_title) != 0)
    {
        talloc_free(mpctx->last_window_title);
        mpctx->last_window_title = talloc_steal(mpctx, title);

        if (mpctx->video_out)
            vo_control(mpctx->video_out, VOCTRL_UPDATE_WINDOW_TITLE, title);

        if (mpctx->ao) {
            ao_control(mpctx->ao, AOCONTROL_UPDATE_STREAM_TITLE, title);
        }
    } else {
        talloc_free(title);
    }
}
