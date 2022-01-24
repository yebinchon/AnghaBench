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
struct thread_data {scalar_t__ counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 size_t run_threads ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void *FUNC2(void *__data) {
	struct thread_data *data = (struct thread_data *)__data;

	size_t last = 0;
	for (;;) {
		size_t i;
		size_t total = 0;
		for(i = 0; i < run_threads ;i++)
			total += data[i].counter;

		FUNC0("%zu metrics/s\n", total-last);
		last = total;

		FUNC1(1);
		FUNC0("\033[F\033[J");
	}

	return NULL;
}