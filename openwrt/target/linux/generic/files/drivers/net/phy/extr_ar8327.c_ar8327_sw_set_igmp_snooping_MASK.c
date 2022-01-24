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
struct switch_val {int port_vlan; } ;
struct switch_dev {int ports; } ;
struct switch_attr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct switch_dev*,struct switch_attr const*,struct switch_val*) ; 

int
FUNC1(struct switch_dev *dev,
			    const struct switch_attr *attr,
			    struct switch_val *val)
{
	int port;

	for (port = 0; port < dev->ports; port++) {
		val->port_vlan = port;
		if (FUNC0(dev, attr, val))
			break;
	}

	return 0;
}