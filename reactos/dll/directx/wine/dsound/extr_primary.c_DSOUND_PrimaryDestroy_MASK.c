#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mixlock; int /*<<< orphan*/ * pwfx; int /*<<< orphan*/ * pwave; scalar_t__ hwbuf; scalar_t__ driver; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DirectSoundDevice ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*) ; 

HRESULT FUNC7(DirectSoundDevice *device)
{
	FUNC6("(%p)\n", device);

	/* **** */
	FUNC1(&(device->mixlock));

	FUNC0(device);
	if (device->driver) {
		if (device->hwbuf) {
			if (FUNC4(device->hwbuf) == 0)
				device->hwbuf = 0;
		}
	} else
                FUNC3(FUNC2(),0,device->pwave);
        FUNC3(FUNC2(),0,device->pwfx);
        device->pwfx=NULL;

	FUNC5(&(device->mixlock));
	/* **** */

	return DS_OK;
}