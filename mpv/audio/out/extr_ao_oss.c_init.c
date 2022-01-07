
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {char* cfg_oss_mixer_channel; int oss_mixer_channel; int buffersize; int outburst; int audio_fd; int oss_mixer_device; } ;
struct ao {int format; struct priv* priv; } ;


 int MP_ERR (struct ao*,char*,...) ;
 int MP_VERBOSE (struct ao*,char*,int ) ;
 int O_RDONLY ;
 int SOUND_MIXER_NRDEVICES ;
 int SOUND_MIXER_PCM ;
 int SOUND_MIXER_READ_DEVMASK ;
 int af_fmt_from_planar (int ) ;
 int close (int) ;
 scalar_t__ device_writable (struct ao*) ;
 int errno ;
 int free (void*) ;
 int ioctl (int,int ,int*) ;
 void* malloc (int) ;
 int memset (void*,int ,int) ;
 int * mixer_channels ;
 int mp_strerror (int ) ;
 int open (int ,int ) ;
 scalar_t__ reopen_device (struct ao*,int) ;
 int strcasecmp (int ,char const*) ;
 int uninit (struct ao*) ;
 int write (int ,void*,int) ;

__attribute__((used)) static int init(struct ao *ao)
{
    struct priv *p = ao->priv;

    const char *mchan = ((void*)0);
    if (p->cfg_oss_mixer_channel && p->cfg_oss_mixer_channel[0])
        mchan = p->cfg_oss_mixer_channel;

    if (mchan) {
        int fd, devs, i;

        if ((fd = open(p->oss_mixer_device, O_RDONLY)) == -1) {
            MP_ERR(ao, "Can't open mixer device %s: %s\n",
                   p->oss_mixer_device, mp_strerror(errno));
        } else {
            ioctl(fd, SOUND_MIXER_READ_DEVMASK, &devs);
            close(fd);

            for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
                if (!strcasecmp(mixer_channels[i], mchan)) {
                    if (!(devs & (1 << i))) {
                        MP_ERR(ao, "Audio card mixer does not have "
                               "channel '%s', using default.\n", mchan);
                        i = SOUND_MIXER_NRDEVICES + 1;
                        break;
                    }
                    p->oss_mixer_channel = i;
                    break;
                }
            }
            if (i == SOUND_MIXER_NRDEVICES) {
                MP_ERR(ao, "Audio card mixer does not have "
                       "channel '%s', using default.\n", mchan);
            }
        }
    } else {
        p->oss_mixer_channel = SOUND_MIXER_PCM;
    }

    MP_VERBOSE(ao, "using '%s' mixer device\n", p->oss_mixer_device);
    MP_VERBOSE(ao, "using '%s' mixer channel\n", mixer_channels[p->oss_mixer_channel]);

    ao->format = af_fmt_from_planar(ao->format);

    if (reopen_device(ao, 1) < 0)
        goto fail;

    if (p->buffersize == -1) {

        void *data = malloc(p->outburst);
        if (!data) {
            MP_ERR(ao, "Out of memory, or broken outburst size.\n");
            goto fail;
        }
        p->buffersize = 0;
        memset(data, 0, p->outburst);
        while (p->buffersize < 0x40000 && device_writable(ao) > 0) {
            (void)write(p->audio_fd, data, p->outburst);
            p->buffersize += p->outburst;
        }
        free(data);
        if (p->buffersize == 0) {
            MP_ERR(ao, "Your OSS audio driver DOES NOT support poll().\n");
            goto fail;
        }
    }

    return 0;

fail:
    uninit(ao);
    return -1;
}
