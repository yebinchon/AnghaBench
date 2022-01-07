
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int device_failed; int audio_fd; } ;
struct ao {struct priv* priv; } ;


 int SNDCTL_DSP_RESET ;
 int close (int) ;
 int ioctl (int,int ,int *) ;

__attribute__((used)) static void close_device(struct ao *ao)
{
    struct priv *p = ao->priv;
    p->device_failed = 0;
    if (p->audio_fd == -1)
        return;



    close(p->audio_fd);
    p->audio_fd = -1;
}
