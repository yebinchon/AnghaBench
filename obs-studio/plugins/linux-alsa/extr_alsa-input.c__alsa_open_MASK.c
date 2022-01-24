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
struct alsa_data {int /*<<< orphan*/  device; int /*<<< orphan*/  listen_thread; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 scalar_t__ SND_PCM_STATE_PREPARED ; 
 int /*<<< orphan*/  SND_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (struct alsa_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct alsa_data*) ; 
 int /*<<< orphan*/  _alsa_listen ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct alsa_data*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

bool FUNC11(struct alsa_data *data)
{
	pthread_attr_t attr;
	int err;

	err = FUNC7(&data->handle, data->device, SND_PCM_STREAM_CAPTURE,
			   0);
	if (err < 0) {
		FUNC2(LOG_ERROR, "Failed to open '%s': %s", data->device,
		     FUNC10(err));
		return false;
	}

	if (!FUNC1(data))
		goto cleanup;

	if (FUNC9(data->handle) != SND_PCM_STATE_PREPARED) {
		FUNC2(LOG_ERROR, "Device not prepared: '%s'", data->device);
		goto cleanup;
	}

	/* start listening */

	err = FUNC8(data->handle);
	if (err < 0) {
		FUNC2(LOG_ERROR, "Failed to start '%s': %s", data->device,
		     FUNC10(err));
		goto cleanup;
	}

	/* create capture thread */

	FUNC4(&attr);
	FUNC5(&attr, PTHREAD_CREATE_JOINABLE);

	err = FUNC6(&data->listen_thread, &attr, _alsa_listen, data);
	if (err) {
		FUNC3(&attr);
		FUNC2(LOG_ERROR,
		     "Failed to create capture thread for device '%s'.",
		     data->device);
		goto cleanup;
	}

	FUNC3(&attr);
	return true;

cleanup:
	FUNC0(data);
	return false;
}