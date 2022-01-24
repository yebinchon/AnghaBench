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
struct percpu_list_node {int dummy; } ;
struct percpu_list {int dummy; } ;

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
 struct percpu_list_node* FUNC6 (struct percpu_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct percpu_list*,struct percpu_list_node*,int /*<<< orphan*/ *) ; 

void *FUNC8(void *arg)
{
	long long i, reps;
	struct percpu_list *list = (struct percpu_list *)arg;

	if (!opt_disable_rseq && FUNC3())
		FUNC0();

	reps = opt_reps;
	for (i = 0; i < reps; i++) {
		struct percpu_list_node *node;

		node = FUNC6(list, NULL);
		if (opt_yield)
			FUNC5();  /* encourage shuffling */
		if (node)
			FUNC7(list, node, NULL);
	}

	FUNC2("tid %d: number of rseq abort: %d, signals delivered: %u\n",
		       (int) FUNC1(), nr_abort, signals_delivered);
	if (!opt_disable_rseq && FUNC4())
		FUNC0();

	return NULL;
}