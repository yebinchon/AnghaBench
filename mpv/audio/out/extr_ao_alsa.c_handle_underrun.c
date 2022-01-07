
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int alsa; int final_chunk_written; } ;
struct ao {struct priv* priv; } ;


 int CHECK_ALSA_ERROR (char*) ;
 int ao_underrun_event (struct ao*) ;
 int snd_pcm_prepare (int ) ;

__attribute__((used)) static void handle_underrun(struct ao *ao)
{
    struct priv *p = ao->priv;

    if (!p->final_chunk_written) {
        ao_underrun_event(ao);

        int err = snd_pcm_prepare(p->alsa);
        CHECK_ALSA_ERROR("pcm prepare error");
    alsa_error: ;
    }
}
