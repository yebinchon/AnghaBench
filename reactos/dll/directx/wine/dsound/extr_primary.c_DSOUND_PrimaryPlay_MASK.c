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
struct TYPE_4__ {int /*<<< orphan*/  hwo; scalar_t__ hwbuf; } ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ DirectSoundDevice ;

/* Variables and functions */
 int /*<<< orphan*/  DSBPLAY_LOOPING ; 
 scalar_t__ DS_OK ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

HRESULT FUNC5(DirectSoundDevice *device)
{
	HRESULT err = DS_OK;
	FUNC1("(%p)\n", device);

	if (device->hwbuf) {
		err = FUNC0(device->hwbuf, 0, 0, DSBPLAY_LOOPING);
		if (err != DS_OK)
			FUNC2("IDsDriverBuffer_Play failed\n");
	} else {
		err = FUNC3(FUNC4(device->hwo));
		if (err != DS_OK)
			FUNC2("waveOutRestart failed\n");
	}

	return err;
}