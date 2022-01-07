
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct track {int * sink; TYPE_1__* dec; scalar_t__ ao_c; int stream; } ;
struct MPContext {int filter_root; } ;
struct TYPE_3__ {int try_spdif; } ;


 int assert (int) ;
 int error_on_track (struct MPContext*,struct track*) ;
 TYPE_1__* mp_decoder_wrapper_create (int ,int ) ;
 int mp_decoder_wrapper_reinit (TYPE_1__*) ;
 int mp_pin_disconnect (int *) ;

int init_audio_decoder(struct MPContext *mpctx, struct track *track)
{
    assert(!track->dec);
    if (!track->stream)
        goto init_error;

    track->dec = mp_decoder_wrapper_create(mpctx->filter_root, track->stream);
    if (!track->dec)
        goto init_error;

    if (track->ao_c)
        track->dec->try_spdif = 1;

    if (!mp_decoder_wrapper_reinit(track->dec))
        goto init_error;

    return 1;

init_error:
    if (track->sink)
        mp_pin_disconnect(track->sink);
    track->sink = ((void*)0);
    error_on_track(mpctx, track);
    return 0;
}
