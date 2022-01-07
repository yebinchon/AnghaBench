
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int paused; scalar_t__ prepause_frames; int alsa; scalar_t__ can_pause; } ;
struct ao {scalar_t__ stream_silence; struct priv* priv; } ;


 int CHECK_ALSA_ERROR (char*) ;
 int MP_VERBOSE (struct ao*,char*) ;
 scalar_t__ SND_PCM_STATE_PAUSED ;
 int ao_play_silence (struct ao*,scalar_t__) ;
 int get_delay (struct ao*) ;
 int resume_device (struct ao*) ;
 int snd_pcm_pause (int ,int ) ;
 int snd_pcm_prepare (int ) ;
 scalar_t__ snd_pcm_state (int ) ;

__attribute__((used)) static void audio_resume(struct ao *ao)
{
    struct priv *p = ao->priv;
    int err;

    if (!p->paused)
        return;

    resume_device(ao);

    if (ao->stream_silence) {
        p->paused = 0;
        get_delay(ao);
    } else if (p->can_pause) {
        if (snd_pcm_state(p->alsa) == SND_PCM_STATE_PAUSED) {
            err = snd_pcm_pause(p->alsa, 0);
            CHECK_ALSA_ERROR("pcm resume error");
        }
    } else {
        MP_VERBOSE(ao, "resume not supported by hardware\n");
        err = snd_pcm_prepare(p->alsa);
        CHECK_ALSA_ERROR("pcm prepare error");
    }

    if (p->prepause_frames)
        ao_play_silence(ao, p->prepause_frames);

alsa_error: ;
    p->paused = 0;
}
