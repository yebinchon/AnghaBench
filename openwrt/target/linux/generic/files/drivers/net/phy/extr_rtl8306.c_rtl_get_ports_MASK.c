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
struct switch_val {size_t len; TYPE_1__ value; int /*<<< orphan*/  port_vlan; } ;
struct switch_port {unsigned int id; int flags; } ;
struct switch_dev {unsigned int cpu_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORTMASK ; 
 unsigned int RTL8306_NUM_PORTS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SWITCH_PORT_FLAG_TAGGED ; 
 int /*<<< orphan*/  TAG_INSERT ; 
 int FUNC2 (struct switch_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct switch_dev *dev, struct switch_val *val)
{
	unsigned int i, mask;

	mask = FUNC2(dev, FUNC1(val->port_vlan, PORTMASK));
	for (i = 0; i < RTL8306_NUM_PORTS; i++) {
		struct switch_port *port;

		if (!(mask & (1 << i)))
			continue;

		port = &val->value.ports[val->len];
		port->id = i;
		if (FUNC2(dev, FUNC0(i, TAG_INSERT)) == 2 || i == dev->cpu_port)
			port->flags = (1 << SWITCH_PORT_FLAG_TAGGED);
		val->len++;
	}

	return 0;
}