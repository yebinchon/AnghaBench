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
struct TYPE_2__ {scalar_t__ (* release_pages ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int BOUNCE_POLL ; 
 int /*<<< orphan*/  area_src ; 
 int /*<<< orphan*/  attr ; 
 int /*<<< orphan*/  background_thread ; 
 int bounces ; 
 int finished ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  locking_thread ; 
 int nr_cpus ; 
 int /*<<< orphan*/ * pipefd ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uffd_poll_thread ; 
 int /*<<< orphan*/  uffd_read_mutex ; 
 int /*<<< orphan*/  uffd_read_thread ; 
 TYPE_1__* uffd_test_ops ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(unsigned long *userfaults)
{
	unsigned long cpu;
	pthread_t locking_threads[nr_cpus];
	pthread_t uffd_threads[nr_cpus];
	pthread_t background_threads[nr_cpus];
	void **_userfaults = (void **) userfaults;

	finished = 0;
	for (cpu = 0; cpu < nr_cpus; cpu++) {
		if (FUNC2(&locking_threads[cpu], &attr,
				   locking_thread, (void *)cpu))
			return 1;
		if (bounces & BOUNCE_POLL) {
			if (FUNC2(&uffd_threads[cpu], &attr,
					   uffd_poll_thread, (void *)cpu))
				return 1;
		} else {
			if (FUNC2(&uffd_threads[cpu], &attr,
					   uffd_read_thread,
					   &_userfaults[cpu]))
				return 1;
			FUNC4(&uffd_read_mutex);
		}
		if (FUNC2(&background_threads[cpu], &attr,
				   background_thread, (void *)cpu))
			return 1;
	}
	for (cpu = 0; cpu < nr_cpus; cpu++)
		if (FUNC3(background_threads[cpu], NULL))
			return 1;

	/*
	 * Be strict and immediately zap area_src, the whole area has
	 * been transferred already by the background treads. The
	 * area_src could then be faulted in in a racy way by still
	 * running uffdio_threads reading zeropages after we zapped
	 * area_src (but they're guaranteed to get -EEXIST from
	 * UFFDIO_COPY without writing zero pages into area_dst
	 * because the background threads already completed).
	 */
	if (uffd_test_ops->release_pages(area_src))
		return 1;


	finished = 1;
	for (cpu = 0; cpu < nr_cpus; cpu++)
		if (FUNC3(locking_threads[cpu], NULL))
			return 1;

	for (cpu = 0; cpu < nr_cpus; cpu++) {
		char c;
		if (bounces & BOUNCE_POLL) {
			if (FUNC6(pipefd[cpu*2+1], &c, 1) != 1) {
				FUNC0(stderr, "pipefd write error\n");
				return 1;
			}
			if (FUNC3(uffd_threads[cpu], &_userfaults[cpu]))
				return 1;
		} else {
			if (FUNC1(uffd_threads[cpu]))
				return 1;
			if (FUNC3(uffd_threads[cpu], NULL))
				return 1;
		}
	}

	return 0;
}