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
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  Const ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  List ; 
 int FUNC1 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),void*) ; 

__attribute__((used)) static bool
FUNC2(Node *node, void *context)
{
	if (node == NULL)
		return false;
	if (FUNC0(node, Const))
		return false;
	if (FUNC0(node, List))
		return FUNC1(node, contain_non_const_walker, context);
	/* Otherwise, abort the tree traversal and return true */
	return true;
}