#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WAVEHDR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_4__ {unsigned int helfrags; scalar_t__ hwbuf; scalar_t__ pwqueue; int /*<<< orphan*/  mixlock; int /*<<< orphan*/ * pwave; int /*<<< orphan*/  hwo; } ;
typedef  TYPE_1__ DirectSoundDevice ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(DirectSoundDevice *device)
{
	FUNC4("(%p)\n", device);

	/* are we using waveOut stuff? */
	if (!device->hwbuf) {
		unsigned c;

		/* get out of CS when calling the wave system */
		FUNC3(&(device->mixlock));
		/* **** */
		device->pwqueue = (DWORD)-1; /* resetting queues */
		FUNC5(device->hwo);
		for (c=0; c<device->helfrags; c++)
			FUNC6(device->hwo, &device->pwave[c], sizeof(WAVEHDR));
		/* **** */
		FUNC1(&(device->mixlock));

		/* clear the queue */
		device->pwqueue = 0;
	} else {
		ULONG ref = FUNC2(device->hwbuf);
		if (!ref)
			device->hwbuf = 0;
		else
			FUNC0("Still %d references on primary buffer, refcount leak?\n", ref);
	}
}