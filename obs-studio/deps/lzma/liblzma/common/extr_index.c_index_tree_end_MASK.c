#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lzma_allocator ;
struct TYPE_3__ {int /*<<< orphan*/ * root; } ;
typedef  TYPE_1__ index_tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void (*) (void*,int /*<<< orphan*/ *)) ; 

__attribute__((used)) static void
FUNC1(index_tree *tree, lzma_allocator *allocator,
		void (*free_func)(void *node, lzma_allocator *allocator))
{
	if (tree->root != NULL)
		FUNC0(tree->root, allocator, free_func);

	return;
}