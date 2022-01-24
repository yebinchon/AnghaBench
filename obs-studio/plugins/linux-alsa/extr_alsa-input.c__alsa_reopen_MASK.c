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
struct alsa_data {int /*<<< orphan*/  reopen; int /*<<< orphan*/  abort_event; } ;

/* Variables and functions */
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int REOPEN_TIMEOUT ; 
 scalar_t__ FUNC0 (struct alsa_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void *FUNC5(void *attr)
{
	struct alsa_data *data = attr;
	unsigned long timeout = REOPEN_TIMEOUT;

	FUNC1(LOG_DEBUG, "Reopen thread started.");

	FUNC2(&data->reopen, true);

	while (FUNC3(data->abort_event, timeout) == ETIMEDOUT) {
		if (FUNC0(data))
			break;

		if (timeout < (REOPEN_TIMEOUT * 5))
			timeout += REOPEN_TIMEOUT;
	}

	FUNC2(&data->reopen, false);

	FUNC1(LOG_DEBUG, "Reopen thread is about to exit.");

	FUNC4(NULL);
	return NULL;
}