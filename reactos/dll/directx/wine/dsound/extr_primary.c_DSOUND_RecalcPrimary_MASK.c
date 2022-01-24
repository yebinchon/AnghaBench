#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dwFlags; } ;
struct TYPE_7__ {int fraglen; int helfrags; int buflen; int writelead; TYPE_2__* pwfx; TYPE_1__ drvdesc; scalar_t__ hwbuf; } ;
struct TYPE_6__ {int nSamplesPerSec; int nBlockAlign; } ;
typedef  TYPE_3__ DirectSoundDevice ;

/* Variables and functions */
 int DSDDESC_DONTNEEDWRITELEAD ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(DirectSoundDevice *device)
{
    FUNC1("(%p)\n", device);

    device->fraglen = FUNC0(device->pwfx->nSamplesPerSec, device->pwfx->nBlockAlign);
    device->helfrags = device->buflen / device->fraglen;
    FUNC1("fraglen=%d helfrags=%d\n", device->fraglen, device->helfrags);

    if (device->hwbuf && device->drvdesc.dwFlags & DSDDESC_DONTNEEDWRITELEAD)
        device->writelead = 0;
    else
        /* calculate the 10ms write lead */
        device->writelead = (device->pwfx->nSamplesPerSec / 100) * device->pwfx->nBlockAlign;
}