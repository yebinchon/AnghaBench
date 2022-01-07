
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pwfx; } ;
struct TYPE_4__ {int wBitsPerSample; } ;
typedef TYPE_2__ DirectSoundDevice ;
typedef int DWORD ;



DWORD DSOUND_bufpos_to_mixpos(const DirectSoundDevice* device, DWORD pos)
{
    DWORD ret = pos * 32 / device->pwfx->wBitsPerSample;
    if (device->pwfx->wBitsPerSample == 32)
        ret *= 2;
    return ret;
}
