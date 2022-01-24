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
typedef  int /*<<< orphan*/  cpu_set_t ;
struct TYPE_2__ {scalar_t__ result; int exception; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FP_UNA_EXCEPTION ; 
 int NUM_EXCEPTIONS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int VEC_UNA_EXCEPTION ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ flags ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tm_una_pong ; 

int FUNC13(void)
{
	int rc, exception; /* FP = 0, VEC = 1, VSX = 2 */
	pthread_t t1;
	pthread_attr_t attr;
	cpu_set_t cpuset;

	FUNC2(!FUNC4());

	/* Set only CPU 0 in the mask. Both threads will be bound to CPU 0. */
	FUNC1(&cpuset);
	FUNC0(0, &cpuset);

	/* Init pthread attribute. */
	rc = FUNC8(&attr);
	if (rc)
		FUNC5(rc, "pthread_attr_init()");

	/* Set CPU 0 mask into the pthread attribute. */
	rc = FUNC9(&attr, sizeof(cpu_set_t), &cpuset);
	if (rc)
		FUNC5(rc, "pthread_attr_setaffinity_np()");

	rc = FUNC10(&t1, &attr /* Bind to CPU 0 */, tm_una_pong, NULL);
	if (rc)
		FUNC5(rc, "pthread_create()");

	/* Name it for systemtap convenience */
	rc = FUNC11(t1, "tm_una_pong");
	if (rc)
		FUNC6(rc, "pthread_create()");

	flags.result = 0;

	for (exception = 0; exception < NUM_EXCEPTIONS; exception++) {
		FUNC7("Checking if FP/VEC registers are sane after");

		if (exception == FP_UNA_EXCEPTION)
			FUNC7(" a FP unavailable exception...\n");

		else if (exception == VEC_UNA_EXCEPTION)
			FUNC7(" a VEC unavailable exception...\n");

		else
			FUNC7(" a VSX unavailable exception...\n");

		flags.exception = exception;

		FUNC12(0, 0, &attr);
		FUNC12(1, 0, &attr);
		FUNC12(0, 1, &attr);
		FUNC12(1, 1, &attr);

	}

	if (flags.result > 0) {
		FUNC7("result: failed!\n");
		FUNC3(1);
	} else {
		FUNC7("result: success\n");
		FUNC3(0);
	}
}