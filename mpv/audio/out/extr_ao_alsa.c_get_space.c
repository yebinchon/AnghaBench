
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int buffersize; int outburst; int alsa; scalar_t__ paused; } ;
struct ao {struct priv* priv; } ;
typedef int snd_pcm_sframes_t ;


 int EPIPE ;
 int MP_ERR (struct ao*,char*,int,int ,int ) ;
 scalar_t__ SND_PCM_STATE_SETUP ;
 int check_device_present (struct ao*,int) ;
 int handle_underrun (struct ao*) ;
 int snd_pcm_avail (int ) ;
 scalar_t__ snd_pcm_state (int ) ;
 int snd_pcm_state_name (scalar_t__) ;
 int snd_strerror (int) ;

__attribute__((used)) static int get_space(struct ao *ao)
{
    struct priv *p = ao->priv;



    if (p->paused || snd_pcm_state(p->alsa) == SND_PCM_STATE_SETUP)
        return p->buffersize;

    snd_pcm_sframes_t space = snd_pcm_avail(p->alsa);
    if (space < 0 && space != -EPIPE) {
        MP_ERR(ao, "Error received from snd_pcm_avail "
                   "(%ld, %s with ALSA state %s)!\n",
               space, snd_strerror(space),
               snd_pcm_state_name(snd_pcm_state(p->alsa)));



        check_device_present(ao, space);
        goto alsa_error;
    }
    if (space == -EPIPE)
        handle_underrun(ao);

    if (space > p->buffersize || space < 0)
        space = p->buffersize;
    return space / p->outburst * p->outburst;

alsa_error:
    return 0;
}
