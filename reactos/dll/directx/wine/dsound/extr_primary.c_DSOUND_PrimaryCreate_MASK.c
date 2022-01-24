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
struct TYPE_5__ {int /*<<< orphan*/  state; int /*<<< orphan*/  buflen; } ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ DirectSoundDevice ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ DS_OK ; 
 int /*<<< orphan*/  STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ds_hel_buflen ; 

HRESULT FUNC3(DirectSoundDevice *device)
{
	HRESULT err = DS_OK;
	FUNC1("(%p)\n", device);

	device->buflen = ds_hel_buflen;
	err = FUNC0(device);

	if (err != DS_OK) {
		FUNC2("DSOUND_PrimaryOpen failed\n");
		return err;
	}

	device->state = STATE_STOPPED;
	return DS_OK;
}