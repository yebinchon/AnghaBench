
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mp_chmap {int dummy; } ;
struct ao {int dummy; } ;
struct MPContext {int audio_speed; int shown_aframes; int delay; int written_audio; struct ao* ao; int encode_lavc_ctx; scalar_t__ paused; } ;


 int ao_get_format (struct ao*,int*,int*,struct mp_chmap*) ;
 int ao_play (struct ao*,void**,int,int) ;
 int assert (int) ;
 int encode_lavc_set_audio_pts (int ,int ) ;
 int playing_audio_pts (struct MPContext*) ;

__attribute__((used)) static int write_to_ao(struct MPContext *mpctx, uint8_t **planes, int samples,
                       int flags)
{
    if (mpctx->paused)
        return 0;
    struct ao *ao = mpctx->ao;
    int samplerate;
    int format;
    struct mp_chmap channels;
    ao_get_format(ao, &samplerate, &format, &channels);
    encode_lavc_set_audio_pts(mpctx->encode_lavc_ctx, playing_audio_pts(mpctx));
    if (samples == 0)
        return 0;
    double real_samplerate = samplerate / mpctx->audio_speed;
    int played = ao_play(mpctx->ao, (void **)planes, samples, flags);
    assert(played <= samples);
    if (played > 0) {
        mpctx->shown_aframes += played;
        mpctx->delay += played / real_samplerate;
        mpctx->written_audio += played / (double)samplerate;
        return played;
    }
    return 0;
}
