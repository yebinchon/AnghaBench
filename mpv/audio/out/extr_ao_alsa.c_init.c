
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {TYPE_1__* opts; } ;
struct mp_chmap {int num; } ;
struct ao {struct mp_chmap channels; int format; int global; struct priv* priv; } ;
struct TYPE_2__ {int ni; } ;


 int INIT_DEVICE_ERR_HWPARAMS ;
 int MP_VERBOSE (struct ao*,char*,...) ;
 int MP_WARN (struct ao*,char*) ;
 int SND_PCM_NO_AUTO_CHANNELS ;
 int SND_PCM_NO_AUTO_FORMAT ;
 int SND_PCM_NO_AUTO_RESAMPLE ;
 int af_fmt_from_planar (int ) ;
 int ao_alsa_conf ;
 int init_device (struct ao*,int) ;
 scalar_t__ mp_chmap_is_valid (struct mp_chmap*) ;
 int mp_chmap_remove_na (struct mp_chmap*) ;
 TYPE_1__* mp_get_config_group (struct ao*,int ,int *) ;
 int snd_asoundlib_version () ;
 int uninit (struct ao*) ;

__attribute__((used)) static int init(struct ao *ao)
{
    struct priv *p = ao->priv;
    p->opts = mp_get_config_group(ao, ao->global, &ao_alsa_conf);

    if (!p->opts->ni)
        ao->format = af_fmt_from_planar(ao->format);

    MP_VERBOSE(ao, "using ALSA version: %s\n", snd_asoundlib_version());

    int mode = 0;
    int r = init_device(ao, mode);
    if (r == INIT_DEVICE_ERR_HWPARAMS) {




        MP_WARN(ao, "Attempting to work around even more ALSA bugs...\n");
        mode |= SND_PCM_NO_AUTO_CHANNELS | SND_PCM_NO_AUTO_FORMAT |
                SND_PCM_NO_AUTO_RESAMPLE;
        r = init_device(ao, mode);
    }
    if (r >= 0) {
        struct mp_chmap without_na = ao->channels;
        mp_chmap_remove_na(&without_na);

        if (mp_chmap_is_valid(&without_na) && without_na.num <= 2 &&
            ao->channels.num > 2)
        {
            MP_VERBOSE(ao, "Working around braindead dmix multichannel behavior.\n");
            uninit(ao);
            ao->channels = without_na;
            r = init_device(ao, mode);
        }
    }

    return r;
}
