
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct track {int selected; TYPE_1__* dec; scalar_t__ ao_c; scalar_t__ vo_c; scalar_t__ sink; } ;
struct MPContext {int num_tracks; TYPE_3__* ao_chain; TYPE_2__* vo_chain; struct track** tracks; } ;
struct TYPE_6__ {int filter_src; int dec_src; } ;
struct TYPE_5__ {int filter_src; int dec_src; } ;
struct TYPE_4__ {int f; } ;


 int talloc_free (int ) ;
 int uninit_audio_chain (struct MPContext*) ;
 int uninit_video_chain (struct MPContext*) ;

__attribute__((used)) static void cleanup_deassociated_complex_filters(struct MPContext *mpctx)
{
    for (int n = 0; n < mpctx->num_tracks; n++) {
        struct track *track = mpctx->tracks[n];
        if (!(track->sink || track->vo_c || track->ao_c)) {
            if (track->dec && !track->vo_c && !track->ao_c) {
                talloc_free(track->dec->f);
                track->dec = ((void*)0);
            }
            track->selected = 0;
        }
    }

    if (mpctx->vo_chain && !mpctx->vo_chain->dec_src &&
        !mpctx->vo_chain->filter_src)
    {
        uninit_video_chain(mpctx);
    }
    if (mpctx->ao_chain && !mpctx->ao_chain->dec_src &&
        !mpctx->ao_chain->filter_src)
    {
        uninit_audio_chain(mpctx);
    }
}
