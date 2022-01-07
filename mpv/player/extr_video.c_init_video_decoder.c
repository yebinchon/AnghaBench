
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct track {int * sink; int dec; int stream; TYPE_2__* vo_c; } ;
struct mp_filter {int dummy; } ;
struct MPContext {struct mp_filter* filter_root; } ;
struct TYPE_4__ {TYPE_1__* filter; } ;
struct TYPE_3__ {struct mp_filter* f; } ;


 int assert (int) ;
 int error_on_track (struct MPContext*,struct track*) ;
 int mp_decoder_wrapper_create (struct mp_filter*,int ) ;
 int mp_decoder_wrapper_reinit (int ) ;
 int mp_pin_disconnect (int *) ;

int init_video_decoder(struct MPContext *mpctx, struct track *track)
{
    assert(!track->dec);
    if (!track->stream)
        goto err_out;

    struct mp_filter *parent = mpctx->filter_root;






    if (track->vo_c)
        parent = track->vo_c->filter->f;

    track->dec = mp_decoder_wrapper_create(parent, track->stream);
    if (!track->dec)
        goto err_out;

    if (!mp_decoder_wrapper_reinit(track->dec))
        goto err_out;

    return 1;

err_out:
    if (track->sink)
        mp_pin_disconnect(track->sink);
    track->sink = ((void*)0);
    error_on_track(mpctx, track);
    return 0;
}
