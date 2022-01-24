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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int passed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  worker ; 

int FUNC7()
{
	int threads;
	pthread_t *thread;

	FUNC0(!FUNC2());

	passed = 1;

	threads = FUNC6(_SC_NPROCESSORS_ONLN) * 4;
	thread = FUNC3(sizeof(pthread_t)*threads);
	if (!thread)
		return EXIT_FAILURE;

	for (uint64_t i = 0; i < threads; i++)
		FUNC4(&thread[i], NULL, &worker, NULL);

	for (uint64_t i = 0; i < threads; i++)
		FUNC5(thread[i], NULL);

	FUNC1(thread);

	return passed ? EXIT_SUCCESS : EXIT_FAILURE;
}