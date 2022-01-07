
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int alsa; } ;
struct ao {struct priv* priv; } ;


 int EAGAIN ;
 int MP_INFO (struct ao*,char*) ;
 scalar_t__ SND_PCM_STATE_SUSPENDED ;
 int sleep (int) ;
 int snd_pcm_resume (int ) ;
 scalar_t__ snd_pcm_state (int ) ;

__attribute__((used)) static void resume_device(struct ao *ao)
{
    struct priv *p = ao->priv;
    int err;

    if (snd_pcm_state(p->alsa) == SND_PCM_STATE_SUSPENDED) {
        MP_INFO(ao, "PCM in suspend mode, trying to resume.\n");

        while ((err = snd_pcm_resume(p->alsa)) == -EAGAIN)
            sleep(1);
    }
}
