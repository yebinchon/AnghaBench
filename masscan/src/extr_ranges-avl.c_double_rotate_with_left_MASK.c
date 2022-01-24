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
struct RavlNode {int /*<<< orphan*/  left; } ;

/* Variables and functions */
 struct RavlNode* FUNC0 (struct RavlNode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct RavlNode *
FUNC2(struct RavlNode* k3)
{
    /* Rotate between k1 and k2 */
    k3->left = FUNC1(k3->left);
 
    /* Rotate between K3 and k2 */
    return FUNC0(k3);
}