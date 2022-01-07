
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int prepause_samples; int audio_fd; } ;
struct ao {int samplerate; struct priv* priv; } ;


 int SNDCTL_DSP_RESET ;
 int close_device (struct ao*) ;
 int get_delay (struct ao*) ;
 int ioctl (int ,int ,int *) ;

__attribute__((used)) static void audio_pause(struct ao *ao)
{
    struct priv *p = ao->priv;
    p->prepause_samples = get_delay(ao) * ao->samplerate;



    close_device(ao);

}
