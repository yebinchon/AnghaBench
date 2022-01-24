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
typedef  int /*<<< orphan*/  WAVEHDR ;
struct TYPE_3__ {size_t pwplay; size_t pwqueue; size_t helfrags; size_t fraglen; size_t prebuf; size_t mixpos; int /*<<< orphan*/  mixlock; int /*<<< orphan*/ * pwave; int /*<<< orphan*/  hwo; } ;
typedef  TYPE_1__ DirectSoundDevice ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(DirectSoundDevice *device, BOOL force)
{
	DWORD prebuf_frags, wave_writepos, wave_fragpos, i;
	FUNC2("(%p)\n", device);

	/* calculate the current wave frag position */
	wave_fragpos = (device->pwplay + device->pwqueue) % device->helfrags;

	/* calculate the current wave write position */
	wave_writepos = wave_fragpos * device->fraglen;

	FUNC2("wave_fragpos = %i, wave_writepos = %i, pwqueue = %i, prebuf = %i\n",
		wave_fragpos, wave_writepos, device->pwqueue, device->prebuf);

	if (!force)
	{
		/* check remaining prebuffered frags */
		prebuf_frags = device->mixpos / device->fraglen;
		if (prebuf_frags == device->helfrags)
			--prebuf_frags;
		FUNC2("wave_fragpos = %d, mixpos_frags = %d\n", wave_fragpos, prebuf_frags);
		if (prebuf_frags < wave_fragpos)
			prebuf_frags += device->helfrags;
		prebuf_frags -= wave_fragpos;
		FUNC2("wanted prebuf_frags = %d\n", prebuf_frags);
	}
	else
		/* buffer the maximum amount of frags */
		prebuf_frags = device->prebuf;

	/* limit to the queue we have left */
	if ((prebuf_frags + device->pwqueue) > device->prebuf)
		prebuf_frags = device->prebuf - device->pwqueue;

	FUNC2("prebuf_frags = %i\n", prebuf_frags);

	/* adjust queue */
	device->pwqueue += prebuf_frags;

	/* get out of CS when calling the wave system */
	FUNC1(&(device->mixlock));
	/* **** */

	/* queue up the new buffers */
	for(i=0; i<prebuf_frags; i++){
		FUNC2("queueing wave buffer %i\n", wave_fragpos);
		FUNC3(device->hwo, &device->pwave[wave_fragpos], sizeof(WAVEHDR));
		wave_fragpos++;
		wave_fragpos %= device->helfrags;
	}

	/* **** */
	FUNC0(&(device->mixlock));

	FUNC2("queue now = %i\n", device->pwqueue);
}