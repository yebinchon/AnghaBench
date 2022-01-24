#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int pwplay; int pwqueue; int fraglen; int helfrags; scalar_t__ hwbuf; } ;
typedef  int* LPDWORD ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ DirectSoundDevice ;

/* Variables and functions */
 scalar_t__ DS_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,int*,int*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

HRESULT FUNC4(DirectSoundDevice *device, LPDWORD playpos, LPDWORD writepos)
{
	FUNC2("(%p,%p,%p)\n", device, playpos, writepos);

	if (device->hwbuf) {
		HRESULT err=FUNC1(device->hwbuf,playpos,writepos);
		if (err != S_OK) {
			FUNC3("IDsDriverBuffer_GetPosition failed\n");
			return err;
		}
	} else {
		FUNC2("pwplay=%i, pwqueue=%i\n", device->pwplay, device->pwqueue);

		/* check if playpos was requested */
		if (playpos)
			/* use the cached play position */
			*playpos = device->pwplay * device->fraglen;

		/* check if writepos was requested */
		if (writepos)
			/* the writepos is the first non-queued position */
			*writepos = ((device->pwplay + device->pwqueue) % device->helfrags) * device->fraglen;
	}
	FUNC2("playpos = %d, writepos = %d (%p, time=%d)\n", playpos?*playpos:-1, writepos?*writepos:-1, device, FUNC0());
	return DS_OK;
}