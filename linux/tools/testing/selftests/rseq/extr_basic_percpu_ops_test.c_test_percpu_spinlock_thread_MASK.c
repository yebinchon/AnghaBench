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
struct spinlock_test_data {int reps; int /*<<< orphan*/  lock; TYPE_1__* c; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int) ; 

void *FUNC7(void *arg)
{
	struct spinlock_test_data *data = arg;
	int i, cpu;

	if (FUNC3()) {
		FUNC1(stderr, "Error: rseq_register_current_thread(...) failed(%d): %s\n",
			errno, FUNC6(errno));
		FUNC0();
	}
	for (i = 0; i < data->reps; i++) {
		cpu = FUNC4(&data->lock);
		data->c[cpu].count++;
		FUNC2(&data->lock, cpu);
	}
	if (FUNC5()) {
		FUNC1(stderr, "Error: rseq_unregister_current_thread(...) failed(%d): %s\n",
			errno, FUNC6(errno));
		FUNC0();
	}

	return NULL;
}