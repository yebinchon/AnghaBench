#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef  TYPE_1__ NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(NODE *node)
{
	/* since this function recurses, it could be driven to stack overflow. */
	FUNC0();

	if (!node)
		return;
	if (node->left)
		FUNC2(node->left);
	if (node->right)
		FUNC2(node->right);
	FUNC1(node);
}