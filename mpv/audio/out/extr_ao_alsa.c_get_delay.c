
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {double delay_before_pause; int alsa; scalar_t__ paused; } ;
struct ao {scalar_t__ samplerate; struct priv* priv; } ;
typedef double snd_pcm_sframes_t ;


 int EPIPE ;
 int handle_underrun (struct ao*) ;
 int snd_pcm_delay (int ,double*) ;
 int snd_pcm_forward (int ,double) ;

__attribute__((used)) static double get_delay(struct ao *ao)
{
    struct priv *p = ao->priv;
    snd_pcm_sframes_t delay;

    if (p->paused)
        return p->delay_before_pause;

    int err = snd_pcm_delay(p->alsa, &delay);
    if (err < 0) {
        if (err == -EPIPE)
            handle_underrun(ao);
        return 0;
    }

    if (delay < 0) {

        snd_pcm_forward(p->alsa, -delay);
        delay = 0;
    }
    return delay / (double)ao->samplerate;
}
