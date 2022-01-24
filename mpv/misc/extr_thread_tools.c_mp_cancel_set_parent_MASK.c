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
struct mp_cancel {int /*<<< orphan*/  lock; struct mp_cancel* parent; int /*<<< orphan*/  slaves; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mp_cancel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mp_cancel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_cancel*) ; 
 int /*<<< orphan*/  siblings ; 

void FUNC5(struct mp_cancel *slave, struct mp_cancel *parent)
{
    // We can access c->parent without synchronization, because:
    //  - concurrent mp_cancel_set_parent() calls to slave are not allowed
    //  - slave->parent needs to stay valid as long as the slave exists
    if (slave->parent == parent)
        return;
    if (slave->parent) {
        FUNC2(&slave->parent->lock);
        FUNC1(siblings, &slave->parent->slaves, slave);
        FUNC3(&slave->parent->lock);
    }
    slave->parent = parent;
    if (slave->parent) {
        FUNC2(&slave->parent->lock);
        FUNC0(siblings, &slave->parent->slaves, slave);
        FUNC4(slave->parent);
        FUNC3(&slave->parent->lock);
    }
}