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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int nthread ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigfuz_test ; 

__attribute__((used)) static int FUNC5(void)
{
	int t, rc;
	pthread_t *threads;

	threads = FUNC1(nthread * sizeof(pthread_t));

	for (t = 0; t < nthread; t++) {
		rc = FUNC3(&threads[t], NULL, sigfuz_test,
				    (void *)&t);
		if (rc)
			FUNC2("Thread creation error\n");
	}

	for (t = 0; t < nthread; t++) {
		rc = FUNC4(threads[t], NULL);
		if (rc)
			FUNC2("Thread join error\n");
	}

	FUNC0(threads);

	return EXIT_SUCCESS;
}