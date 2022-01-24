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
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 

__attribute__((used)) static void FUNC7(void *(*fn)(void *), void *arg, unsigned long cpu)
{
	int rc;
	pthread_t tid;
	cpu_set_t cpuset;
	pthread_attr_t attr;

	FUNC1(&cpuset);
	FUNC0(cpu, &cpuset);

	rc = FUNC4(&attr);
	if (rc) {
		errno = rc;
		FUNC3("pthread_attr_init");
		FUNC2(1);
	}

	rc = FUNC5(&attr, sizeof(cpu_set_t), &cpuset);
	if (rc)	{
		errno = rc;
		FUNC3("pthread_attr_setaffinity_np");
		FUNC2(1);
	}

	rc = FUNC6(&tid, &attr, fn, arg);
	if (rc) {
		errno = rc;
		FUNC3("pthread_create");
		FUNC2(1);
	}
}