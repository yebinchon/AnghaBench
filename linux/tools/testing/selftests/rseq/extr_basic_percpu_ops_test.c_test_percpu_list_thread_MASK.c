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
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int) ; 
 struct percpu_list_node* FUNC6 (struct percpu_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct percpu_list*,struct percpu_list_node*,int /*<<< orphan*/ *) ; 

void *FUNC8(void *arg)
{
	int i;
	struct percpu_list *list = (struct percpu_list *)arg;

	if (FUNC2()) {
		FUNC1(stderr, "Error: rseq_register_current_thread(...) failed(%d): %s\n",
			errno, FUNC5(errno));
		FUNC0();
	}

	for (i = 0; i < 100000; i++) {
		struct percpu_list_node *node;

		node = FUNC6(list, NULL);
		FUNC4();  /* encourage shuffling */
		if (node)
			FUNC7(list, node, NULL);
	}

	if (FUNC3()) {
		FUNC1(stderr, "Error: rseq_unregister_current_thread(...) failed(%d): %s\n",
			errno, FUNC5(errno));
		FUNC0();
	}

	return NULL;
}