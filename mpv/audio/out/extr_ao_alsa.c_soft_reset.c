
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int alsa; } ;
struct ao {struct priv* priv; } ;
typedef int snd_pcm_sframes_t ;


 int CHECK_ALSA_WARN (char*) ;
 scalar_t__ SND_PCM_STATE_RUNNING ;
 int snd_pcm_rewind (int ,int) ;
 int snd_pcm_rewindable (int ) ;
 scalar_t__ snd_pcm_state (int ) ;

__attribute__((used)) static void soft_reset(struct ao *ao)
{
    struct priv *p = ao->priv;
    snd_pcm_sframes_t frames = snd_pcm_rewindable(p->alsa);
    if (frames > 0 && snd_pcm_state(p->alsa) == SND_PCM_STATE_RUNNING) {
        frames = snd_pcm_rewind(p->alsa, frames);
        if (frames < 0) {
            int err = frames;
            CHECK_ALSA_WARN("pcm rewind error");
        }
    }
}
