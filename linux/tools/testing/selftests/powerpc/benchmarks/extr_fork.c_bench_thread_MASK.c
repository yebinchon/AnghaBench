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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int cpu ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  iterations ; 
 int /*<<< orphan*/  null_fn ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void)
{
	pthread_t tid;
	cpu_set_t cpuset;
	pthread_attr_t attr;
	int rc;

	rc = FUNC4(&attr);
	if (rc) {
		errno = rc;
		FUNC3("pthread_attr_init");
		FUNC2(1);
	}

	if (cpu != -1) {
		FUNC1(&cpuset);
		FUNC0(cpu, &cpuset);

		rc = FUNC5(&attr, sizeof(cpu_set_t), &cpuset);
		if (rc) {
			errno = rc;
			FUNC3("pthread_attr_setaffinity_np");
			FUNC2(1);
		}
	}

	while (1) {
		rc = FUNC6(&tid, &attr, null_fn, NULL);
		if (rc) {
			errno = rc;
			FUNC3("pthread_create");
			FUNC2(1);
		}
		rc = FUNC7(tid, NULL);
		if (rc) {
			errno = rc;
			FUNC3("pthread_join");
			FUNC2(1);
		}
		iterations++;
	}
}