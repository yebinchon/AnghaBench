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
struct RavlNode {int /*<<< orphan*/  right; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct RavlNode* FUNC1 (struct RavlNode*) ; 

__attribute__((used)) static struct RavlNode *
FUNC2( struct RavlNode* k1 )
{
    /* rotate between K3 and k2 */
    k1->right = FUNC0(k1->right);
 
    /* rotate between k1 and k2 */
    return FUNC1(k1);
}