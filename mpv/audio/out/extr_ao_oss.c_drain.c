
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int audio_fd; } ;
struct ao {struct priv* priv; } ;


 int SNDCTL_DSP_SYNC ;
 int ioctl (int,int ,int *) ;

__attribute__((used)) static void drain(struct ao *ao)
{






}
