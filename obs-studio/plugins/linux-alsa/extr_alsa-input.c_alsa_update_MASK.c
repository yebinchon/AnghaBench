#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct alsa_data {char const* device; unsigned int rate; scalar_t__ handle; scalar_t__ active; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alsa_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct alsa_data*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char const* FUNC3 (char const*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 

void FUNC7(void *vptr, obs_data_t *settings)
{
	struct alsa_data *data = vptr;
	const char *device;
	unsigned int rate;
	bool reset = false;

	device = FUNC5(settings, "device_id");

	if (FUNC6(device, "__custom__") == 0)
		device = FUNC5(settings, "custom_pcm");

	if (FUNC6(data->device, device) != 0) {
		FUNC2(data->device);
		data->device = FUNC3(device);
		reset = true;
	}

	rate = FUNC4(settings, "rate");
	if (data->rate != rate) {
		data->rate = rate;
		reset = true;
	}

#if SHUTDOWN_ON_DEACTIVATE
	if (reset && data->handle)
		_alsa_close(data);

	if (data->active && !data->handle)
		_alsa_try_open(data);
#else
	if (reset) {
		if (data->handle)
			FUNC0(data);
		FUNC1(data);
	}
#endif
}