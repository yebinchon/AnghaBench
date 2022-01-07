
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int oss_mixer_channel; int oss_mixer_device; } ;
struct ao {int format; struct priv* priv; } ;
typedef enum aocontrol { ____Placeholder_aocontrol } aocontrol ;
struct TYPE_3__ {int right; int left; } ;
typedef TYPE_1__ ao_control_vol_t ;




 int CONTROL_ERROR ;
 int CONTROL_OK ;
 int CONTROL_TRUE ;
 int CONTROL_UNKNOWN ;
 int MIXER_READ (int) ;
 int MIXER_WRITE (int) ;
 int O_RDONLY ;
 int SOUND_MIXER_READ_DEVMASK ;
 int af_fmt_is_pcm (int ) ;
 int close (int) ;
 int ioctl (int,int ,int*) ;
 int open (int ,int ) ;
 int volume_oss4 (struct ao*,TYPE_1__*,int) ;

__attribute__((used)) static int control(struct ao *ao, enum aocontrol cmd, void *arg)
{
    struct priv *p = ao->priv;
    switch (cmd) {
    case 129:
    case 128: {
        ao_control_vol_t *vol = (ao_control_vol_t *)arg;
        int fd, v, devs;







        if (!af_fmt_is_pcm(ao->format))
            return CONTROL_TRUE;

        if ((fd = open(p->oss_mixer_device, O_RDONLY)) != -1) {
            ioctl(fd, SOUND_MIXER_READ_DEVMASK, &devs);
            if (devs & (1 << p->oss_mixer_channel)) {
                if (cmd == 129) {
                    ioctl(fd, MIXER_READ(p->oss_mixer_channel), &v);
                    vol->right = (v & 0xFF00) >> 8;
                    vol->left = v & 0x00FF;
                } else {
                    v = ((int)vol->right << 8) | (int)vol->left;
                    ioctl(fd, MIXER_WRITE(p->oss_mixer_channel), &v);
                }
            } else {
                close(fd);
                return CONTROL_ERROR;
            }
            close(fd);
            return CONTROL_OK;
        }
        return CONTROL_ERROR;
    }
    }
    return CONTROL_UNKNOWN;
}
