#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* left; } ;
struct TYPE_6__ {TYPE_2__* root; } ;
typedef  TYPE_1__ RBTree ;
typedef  TYPE_2__ RBTNode ;

/* Variables and functions */
 TYPE_2__* RBTNIL ; 

RBTNode *
FUNC0(RBTree *rbt)
{
	RBTNode    *node = rbt->root;
	RBTNode    *leftmost = rbt->root;

	while (node != RBTNIL)
	{
		leftmost = node;
		node = node->left;
	}

	if (leftmost != RBTNIL)
		return leftmost;

	return NULL;
}