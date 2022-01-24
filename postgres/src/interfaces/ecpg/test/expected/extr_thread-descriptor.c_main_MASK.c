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
typedef  scalar_t__ pthread_t ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  INFINITE ; 
 int THREADS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC6 ()
{
#ifdef ENABLE_THREAD_SAFETY
	int i;
#ifdef WIN32
	HANDLE threads[THREADS];
#else
	pthread_t threads[THREADS];
#endif

#ifdef WIN32
	for (i = 0; i < THREADS; ++i)
	{
		unsigned id;
		threads[i] = (HANDLE)_beginthreadex(NULL, 0, fn, NULL, 0, &id);
	}

	WaitForMultipleObjects(THREADS, threads, TRUE, INFINITE);
	for (i = 0; i < THREADS; ++i)
		CloseHandle(threads[i]);
#else
	for (i = 0; i < THREADS; ++i)
		pthread_create(&threads[i], NULL, fn, NULL);
	for (i = 0; i < THREADS; ++i)
		pthread_join(threads[i], NULL);
#endif
#else
	FUNC3(NULL);
#endif

	return 0;
}