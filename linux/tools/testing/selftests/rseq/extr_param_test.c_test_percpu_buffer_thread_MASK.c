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
struct percpu_buffer_node {int dummy; } ;
struct percpu_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  nr_abort ; 
 int /*<<< orphan*/  opt_disable_rseq ; 
 long long opt_reps ; 
 scalar_t__ opt_yield ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  signals_delivered ; 
 struct percpu_buffer_node* FUNC6 (struct percpu_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct percpu_buffer*,struct percpu_buffer_node*,int /*<<< orphan*/ *) ; 

void *FUNC8(void *arg)
{
	long long i, reps;
	struct percpu_buffer *buffer = (struct percpu_buffer *)arg;

	if (!opt_disable_rseq && FUNC3())
		FUNC0();

	reps = opt_reps;
	for (i = 0; i < reps; i++) {
		struct percpu_buffer_node *node;

		node = FUNC6(buffer, NULL);
		if (opt_yield)
			FUNC5();  /* encourage shuffling */
		if (node) {
			if (!FUNC7(buffer, node, NULL)) {
				/* Should increase buffer size. */
				FUNC0();
			}
		}
	}

	FUNC2("tid %d: number of rseq abort: %d, signals delivered: %u\n",
		       (int) FUNC1(), nr_abort, signals_delivered);
	if (!opt_disable_rseq && FUNC4())
		FUNC0();

	return NULL;
}