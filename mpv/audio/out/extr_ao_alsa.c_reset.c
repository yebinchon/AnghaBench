
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int paused; int final_chunk_written; int alsa; scalar_t__ delay_before_pause; scalar_t__ prepause_frames; } ;
struct ao {scalar_t__ stream_silence; struct priv* priv; } ;


 int CHECK_ALSA_ERROR (char*) ;
 int snd_pcm_drop (int ) ;
 int snd_pcm_prepare (int ) ;
 int soft_reset (struct ao*) ;

__attribute__((used)) static void reset(struct ao *ao)
{
    struct priv *p = ao->priv;
    int err;

    p->paused = 0;
    p->prepause_frames = 0;
    p->delay_before_pause = 0;
    p->final_chunk_written = 0;

    if (ao->stream_silence) {
        soft_reset(ao);
    } else {
        err = snd_pcm_drop(p->alsa);
        CHECK_ALSA_ERROR("pcm prepare error");
        err = snd_pcm_prepare(p->alsa);
        CHECK_ALSA_ERROR("pcm prepare error");
    }

alsa_error: ;
}
