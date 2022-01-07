
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct priv {TYPE_1__* opts; } ;
struct ao {int format; struct priv* priv; } ;
typedef int snd_mixer_t ;
typedef int snd_mixer_selem_id_t ;
typedef int snd_mixer_elem_t ;
typedef enum aocontrol { ____Placeholder_aocontrol } aocontrol ;
struct TYPE_4__ {float left; float right; } ;
typedef TYPE_2__ ao_control_vol_t ;
struct TYPE_3__ {int mixer_device; int mixer_name; int mixer_index; } ;






 int CHECK_ALSA_ERROR (char*) ;
 int CONTROL_ERROR ;
 int CONTROL_FALSE ;
 int CONTROL_OK ;
 int CONTROL_UNKNOWN ;
 int MP_DBG (struct ao*,char*,long,...) ;
 int MP_VERBOSE (struct ao*,char*,int ,int ) ;
 int af_fmt_is_pcm (int ) ;
 int snd_mixer_attach (int *,int ) ;
 int snd_mixer_close (int *) ;
 int * snd_mixer_find_selem (int *,int *) ;
 int snd_mixer_load (int *) ;
 int snd_mixer_open (int **,int ) ;
 int snd_mixer_selem_get_playback_switch (int *,int,int*) ;
 int snd_mixer_selem_get_playback_volume (int *,int,long*) ;
 int snd_mixer_selem_get_playback_volume_range (int *,long*,long*) ;
 int snd_mixer_selem_has_playback_switch (int *) ;
 int snd_mixer_selem_has_playback_switch_joined (int *) ;
 int snd_mixer_selem_id_alloca (int **) ;
 int snd_mixer_selem_id_get_index (int *) ;
 int snd_mixer_selem_id_get_name (int *) ;
 int snd_mixer_selem_id_set_index (int *,int ) ;
 int snd_mixer_selem_id_set_name (int *,int ) ;
 int snd_mixer_selem_register (int *,int *,int *) ;
 int snd_mixer_selem_set_playback_switch (int *,int,int) ;
 int snd_mixer_selem_set_playback_volume (int *,int,long) ;

__attribute__((used)) static int control(struct ao *ao, enum aocontrol cmd, void *arg)
{
    struct priv *p = ao->priv;
    snd_mixer_t *handle = ((void*)0);
    switch (cmd) {
    case 131:
    case 129:
    case 130:
    case 128:
    {
        int err;
        snd_mixer_elem_t *elem;
        snd_mixer_selem_id_t *sid;

        long pmin, pmax;
        long get_vol, set_vol;
        float f_multi;

        if (!af_fmt_is_pcm(ao->format))
            return CONTROL_FALSE;

        snd_mixer_selem_id_alloca(&sid);

        snd_mixer_selem_id_set_index(sid, p->opts->mixer_index);
        snd_mixer_selem_id_set_name(sid, p->opts->mixer_name);

        err = snd_mixer_open(&handle, 0);
        CHECK_ALSA_ERROR("Mixer open error");

        err = snd_mixer_attach(handle, p->opts->mixer_device);
        CHECK_ALSA_ERROR("Mixer attach error");

        err = snd_mixer_selem_register(handle, ((void*)0), ((void*)0));
        CHECK_ALSA_ERROR("Mixer register error");

        err = snd_mixer_load(handle);
        CHECK_ALSA_ERROR("Mixer load error");

        elem = snd_mixer_find_selem(handle, sid);
        if (!elem) {
            MP_VERBOSE(ao, "Unable to find simple control '%s',%i.\n",
                       snd_mixer_selem_id_get_name(sid),
                       snd_mixer_selem_id_get_index(sid));
            goto alsa_error;
        }

        snd_mixer_selem_get_playback_volume_range(elem, &pmin, &pmax);
        f_multi = (100 / (float)(pmax - pmin));

        switch (cmd) {
        case 128: {
            ao_control_vol_t *vol = arg;
            set_vol = vol->left / f_multi + pmin + 0.5;

            err = snd_mixer_selem_set_playback_volume(elem, 0, set_vol);
            CHECK_ALSA_ERROR("Error setting left channel");
            MP_DBG(ao, "left=%li, ", set_vol);

            set_vol = vol->right / f_multi + pmin + 0.5;

            err = snd_mixer_selem_set_playback_volume(elem, 1, set_vol);
            CHECK_ALSA_ERROR("Error setting right channel");
            MP_DBG(ao, "right=%li, pmin=%li, pmax=%li, mult=%f\n",
                   set_vol, pmin, pmax, f_multi);
            break;
        }
        case 130: {
            ao_control_vol_t *vol = arg;
            snd_mixer_selem_get_playback_volume(elem, 0, &get_vol);
            vol->left = (get_vol - pmin) * f_multi;
            snd_mixer_selem_get_playback_volume(elem, 1, &get_vol);
            vol->right = (get_vol - pmin) * f_multi;
            MP_DBG(ao, "left=%f, right=%f\n", vol->left, vol->right);
            break;
        }
        case 129: {
            bool *mute = arg;
            if (!snd_mixer_selem_has_playback_switch(elem))
                goto alsa_error;
            if (!snd_mixer_selem_has_playback_switch_joined(elem)) {
                snd_mixer_selem_set_playback_switch(elem, 1, !*mute);
            }
            snd_mixer_selem_set_playback_switch(elem, 0, !*mute);
            break;
        }
        case 131: {
            bool *mute = arg;
            if (!snd_mixer_selem_has_playback_switch(elem))
                goto alsa_error;
            int tmp = 1;
            snd_mixer_selem_get_playback_switch(elem, 0, &tmp);
            *mute = !tmp;
            if (!snd_mixer_selem_has_playback_switch_joined(elem)) {
                snd_mixer_selem_get_playback_switch(elem, 1, &tmp);
                *mute &= !tmp;
            }
            break;
        }
        }
        snd_mixer_close(handle);
        return CONTROL_OK;
    }

    }
    return CONTROL_UNKNOWN;

alsa_error:
    if (handle)
        snd_mixer_close(handle);
    return CONTROL_ERROR;
}
