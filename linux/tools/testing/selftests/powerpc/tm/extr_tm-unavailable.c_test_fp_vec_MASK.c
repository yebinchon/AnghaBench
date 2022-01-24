#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_2__ {int touch_fp; int touch_vec; int result; } ;

/* Variables and functions */
 scalar_t__ DEBUG ; 
 TYPE_1__ flags ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,void**) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tm_una_ping ; 

void FUNC6(int fp, int vec, pthread_attr_t *attr)
{
	int retries = 2;
	void *ret_value;
	pthread_t t0;

	flags.touch_fp = fp;
	flags.touch_vec = vec;

	/*
	 * Without luck it's possible that the transaction is aborted not due to
	 * the unavailable exception caught in the middle as we expect but also,
	 * for instance, due to a context switch or due to a KVM reschedule (if
	 * it's running on a VM). Thus we try a few times before giving up,
	 * checking if the failure cause is the one we expect.
	 */
	do {
		int rc;

		/* Bind to CPU 0, as specified in 'attr'. */
		rc = FUNC3(&t0, attr, tm_una_ping, (void *) &flags);
		if (rc)
			FUNC0(rc, "pthread_create()");
		rc = FUNC5(t0, "tm_una_ping");
		if (rc)
			FUNC1(rc, "pthread_setname_np");
		rc = FUNC4(t0, &ret_value);
		if (rc)
			FUNC0(rc, "pthread_join");

		retries--;
	} while (ret_value != NULL && retries);

	if (!retries) {
		flags.result = 1;
		if (DEBUG)
			FUNC2("All transactions failed unexpectedly\n");

	}
}