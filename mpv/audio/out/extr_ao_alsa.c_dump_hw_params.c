
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int output; } ;
struct ao {int log; struct priv* priv; } ;
typedef int snd_pcm_hw_params_t ;


 int CHECK_ALSA_WARN (char*) ;
 int MSGL_DEBUG ;
 int mp_msg (int ,int ,char*,char const*,int,char*) ;
 size_t snd_output_buffer_string (int ,char**) ;
 int snd_output_flush (int ) ;
 int snd_pcm_hw_params_dump (int *,int ) ;

__attribute__((used)) static void dump_hw_params(struct ao *ao, const char *msg,
                           snd_pcm_hw_params_t *hw_params)
{
    struct priv *p = ao->priv;
    int err;

    err = snd_pcm_hw_params_dump(hw_params, p->output);
    CHECK_ALSA_WARN("Dump hwparams error");

    char *tmp = ((void*)0);
    size_t tmp_s = snd_output_buffer_string(p->output, &tmp);
    if (tmp)
        mp_msg(ao->log, MSGL_DEBUG, "%s---\n%.*s---\n", msg, (int)tmp_s, tmp);
    snd_output_flush(p->output);
}
