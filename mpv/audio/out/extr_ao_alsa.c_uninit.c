
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int * alsa; int * output; } ;
struct ao {struct priv* priv; } ;


 int CHECK_ALSA_ERROR (char*) ;
 int snd_output_close (int *) ;
 int snd_pcm_close (int *) ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct priv *p = ao->priv;

    if (p->output)
        snd_output_close(p->output);
    p->output = ((void*)0);

    if (p->alsa) {
        int err;

        err = snd_pcm_close(p->alsa);
        p->alsa = ((void*)0);
        CHECK_ALSA_ERROR("pcm close error");
    }

alsa_error: ;
}
