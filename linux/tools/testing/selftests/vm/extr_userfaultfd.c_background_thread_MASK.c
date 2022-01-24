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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long nr_pages_per_cpu ; 
 unsigned long page_size ; 
 int /*<<< orphan*/  uffd ; 

__attribute__((used)) static void *FUNC1(void *arg)
{
	unsigned long cpu = (unsigned long) arg;
	unsigned long page_nr;

	for (page_nr = cpu * nr_pages_per_cpu;
	     page_nr < (cpu+1) * nr_pages_per_cpu;
	     page_nr++)
		FUNC0(uffd, page_nr * page_size);

	return NULL;
}