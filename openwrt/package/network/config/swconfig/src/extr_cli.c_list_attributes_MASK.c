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
struct switch_dev {char* dev_name; char* alias; char* name; int ports; int cpu_port; int vlans; int /*<<< orphan*/  port_ops; int /*<<< orphan*/  vlan_ops; int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct switch_dev *dev)
{
	FUNC1("%s: %s(%s), ports: %d (cpu @ %d), vlans: %d\n", dev->dev_name, dev->alias, dev->name, dev->ports, dev->cpu_port, dev->vlans);
	FUNC1("     --switch\n");
	FUNC0(dev->ops);
	FUNC1("     --vlan\n");
	FUNC0(dev->vlan_ops);
	FUNC1("     --port\n");
	FUNC0(dev->port_ops);
}