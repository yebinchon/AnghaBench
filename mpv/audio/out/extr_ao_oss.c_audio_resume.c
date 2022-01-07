
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ prepause_samples; scalar_t__ audio_end; } ;
struct ao {struct priv* priv; } ;


 int ao_play_silence (struct ao*,scalar_t__) ;

__attribute__((used)) static void audio_resume(struct ao *ao)
{
    struct priv *p = ao->priv;
    p->audio_end = 0;
    if (p->prepause_samples > 0)
        ao_play_silence(ao, p->prepause_samples);
}
