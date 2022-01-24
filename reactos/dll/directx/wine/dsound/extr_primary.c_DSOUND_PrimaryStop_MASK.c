#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mixlock; int /*<<< orphan*/  hwo; scalar_t__ hwbuf; } ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ DirectSoundDevice ;

/* Variables and functions */
 scalar_t__ DSERR_BUFFERLOST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ DS_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

HRESULT FUNC12(DirectSoundDevice *device)
{
	HRESULT err = DS_OK;
	FUNC8("(%p)\n", device);

	if (device->hwbuf) {
		err = FUNC6(device->hwbuf);
		if (err == DSERR_BUFFERLOST) {
			FUNC0(device);
			err = FUNC2(device, FALSE);
			if (FUNC5(err))
				FUNC3("DSOUND_ReopenDevice failed\n");
			else
			{
				err = FUNC1(device);
				if (FUNC5(err))
					FUNC9("DSOUND_PrimaryOpen failed\n");
			}
		} else if (err != DS_OK) {
			FUNC9("IDsDriverBuffer_Stop failed\n");
		}
	} else {

		/* don't call the wave system with the lock set */
		FUNC7(&(device->mixlock));
		/* **** */

		err = FUNC10(FUNC11(device->hwo));

		/* **** */
		FUNC4(&(device->mixlock));

		if (err != DS_OK)
			FUNC9("waveOutPause failed\n");
	}

	return err;
}