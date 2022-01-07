
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {scalar_t__ audio_fd; int outburst; scalar_t__ device_failed; } ;
struct ao {int sstride; struct priv* priv; } ;
struct TYPE_3__ {int fragments; int fragsize; int member_0; } ;
typedef TYPE_1__ audio_buf_info ;


 int SNDCTL_DSP_GETOSPACE ;
 scalar_t__ device_writable (struct ao*) ;
 double get_delay (struct ao*) ;
 int ioctl (scalar_t__,int ,TYPE_1__*) ;

__attribute__((used)) static int get_space(struct ao *ao)
{
    struct priv *p = ao->priv;

    audio_buf_info zz = {0};
    if (ioctl(p->audio_fd, SNDCTL_DSP_GETOSPACE, &zz) != -1) {

        return zz.fragments * zz.fragsize / ao->sstride;
    }

    if (p->audio_fd < 0 && p->device_failed && get_delay(ao) > 0.2)
        return 0;

    if (p->audio_fd < 0 || device_writable(ao) > 0)
        return p->outburst / ao->sstride;

    return 0;
}
