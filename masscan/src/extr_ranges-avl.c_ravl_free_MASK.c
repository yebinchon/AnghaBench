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
struct RavlNode {struct RavlNode* right; struct RavlNode* left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RavlNode*) ; 

void 
FUNC1(struct RavlNode *node)
{
    if (node != NULL) {
        FUNC1(node->left);
        FUNC1(node->right);
        FUNC0(node);
    }
}