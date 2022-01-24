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
struct alsa_data {int /*<<< orphan*/  device; int /*<<< orphan*/  reopen_thread; int /*<<< orphan*/  reopen; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 int /*<<< orphan*/  _alsa_reopen ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct alsa_data*) ; 

void FUNC6(struct alsa_data *data)
{
	pthread_attr_t attr;
	int err;

	if (FUNC1(&data->reopen))
		return;

	FUNC3(&attr);
	FUNC4(&attr, PTHREAD_CREATE_JOINABLE);

	err = FUNC5(&data->reopen_thread, &attr, _alsa_reopen, data);
	if (err) {
		FUNC0(LOG_ERROR,
		     "Failed to create reopen thread for device '%s'.",
		     data->device);
	}

	FUNC2(&attr);
}