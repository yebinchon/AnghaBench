#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct switch_port* ports; } ;
struct switch_val {int len; int port_vlan; TYPE_1__ value; } ;
struct switch_port {int id; int flags; } ;
struct switch_dev {int cpu_port; int vlans; } ;

/* Variables and functions */
 int /*<<< orphan*/  NON_PVID_DISCARD ; 
 int /*<<< orphan*/  PORTMASK ; 
 int /*<<< orphan*/  PVID ; 
 int RTL8306_NUM_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int SWITCH_PORT_FLAG_TAGGED ; 
 int /*<<< orphan*/  TAG_INSERT ; 
 int /*<<< orphan*/  VID_INSERT ; 
 unsigned int FUNC2 (struct switch_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct switch_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct switch_dev *dev, struct switch_val *val)
{
	unsigned int mask = 0;
	unsigned int oldmask;
	int i;

	for(i = 0; i < val->len; i++)
	{
		struct switch_port *port = &val->value.ports[i];
		bool tagged = false;

		mask |= (1 << port->id);

		if (port->id == dev->cpu_port)
			continue;

		if ((i == dev->cpu_port) ||
			(port->flags & (1 << SWITCH_PORT_FLAG_TAGGED)))
			tagged = true;

		/* fix up PVIDs for added ports */
		if (!tagged)
			FUNC3(dev, FUNC0(port->id, PVID), val->port_vlan);

		FUNC3(dev, FUNC0(port->id, NON_PVID_DISCARD), (tagged ? 0 : 1));
		FUNC3(dev, FUNC0(port->id, VID_INSERT), (tagged ? 0 : 1));
		FUNC3(dev, FUNC0(port->id, TAG_INSERT), (tagged ? 2 : 1));
	}

	oldmask = FUNC2(dev, FUNC1(val->port_vlan, PORTMASK));
	FUNC3(dev, FUNC1(val->port_vlan, PORTMASK), mask);

	/* fix up PVIDs for removed ports, default to last vlan */
	oldmask &= ~mask;
	for (i = 0; i < RTL8306_NUM_PORTS; i++) {
		if (!(oldmask & (1 << i)))
			continue;

		if (i == dev->cpu_port)
			continue;

		if (FUNC2(dev, FUNC0(i, PVID)) == val->port_vlan)
			FUNC3(dev, FUNC0(i, PVID), dev->vlans - 1);
	}

	return 0;
}