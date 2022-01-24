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
struct switch_dev {struct switch_dev* alias; struct switch_dev* name; int /*<<< orphan*/  vlan_ops; int /*<<< orphan*/  port_ops; int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct switch_dev*) ; 
 scalar_t__ refcount ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct switch_dev*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(struct switch_dev *dev)
{
	FUNC1(&dev->ops);
	FUNC1(&dev->port_ops);
	FUNC1(&dev->vlan_ops);
	FUNC2(dev);
	FUNC0(dev->name);
	FUNC0(dev->alias);
	FUNC0(dev);

	if (--refcount == 0)
		FUNC3();
}