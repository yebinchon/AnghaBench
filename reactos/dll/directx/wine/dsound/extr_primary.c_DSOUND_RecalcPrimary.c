
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwFlags; } ;
struct TYPE_7__ {int fraglen; int helfrags; int buflen; int writelead; TYPE_2__* pwfx; TYPE_1__ drvdesc; scalar_t__ hwbuf; } ;
struct TYPE_6__ {int nSamplesPerSec; int nBlockAlign; } ;
typedef TYPE_3__ DirectSoundDevice ;


 int DSDDESC_DONTNEEDWRITELEAD ;
 int DSOUND_fraglen (int,int) ;
 int TRACE (char*,...) ;

__attribute__((used)) static void DSOUND_RecalcPrimary(DirectSoundDevice *device)
{
    TRACE("(%p)\n", device);

    device->fraglen = DSOUND_fraglen(device->pwfx->nSamplesPerSec, device->pwfx->nBlockAlign);
    device->helfrags = device->buflen / device->fraglen;
    TRACE("fraglen=%d helfrags=%d\n", device->fraglen, device->helfrags);

    if (device->hwbuf && device->drvdesc.dwFlags & DSDDESC_DONTNEEDWRITELEAD)
        device->writelead = 0;
    else

        device->writelead = (device->pwfx->nSamplesPerSec / 100) * device->pwfx->nBlockAlign;
}
