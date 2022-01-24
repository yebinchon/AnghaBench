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
struct switch_port_link {scalar_t__ speed; int /*<<< orphan*/  duplex; } ;
struct switch_dev {int cpu_port; } ;
struct b53_device {int enabled_ports; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 scalar_t__ SWITCH_PORT_SPEED_1000 ; 
 scalar_t__ FUNC1 (struct b53_device*) ; 
 scalar_t__ FUNC2 (struct b53_device*) ; 
 scalar_t__ FUNC3 (struct b53_device*) ; 
 struct b53_device* FUNC4 (struct switch_dev*) ; 
 int FUNC5 (struct switch_dev*,int,struct switch_port_link*) ; 

__attribute__((used)) static int FUNC6(struct switch_dev *sw_dev, int port,
			     struct switch_port_link *link)
{
	struct b53_device *dev = FUNC4(sw_dev);

	/*
	 * TODO: BCM63XX requires special handling as it can have external phys
	 * and ports might be GE or only FE
	 */
	if (FUNC3(dev))
		return -ENOTSUPP;

	if (port == sw_dev->cpu_port)
		return -EINVAL;

	if (!(FUNC0(port) & dev->enabled_ports))
		return -EINVAL;

	if (link->speed == SWITCH_PORT_SPEED_1000 &&
	    (FUNC1(dev) || FUNC2(dev)))
		return -EINVAL;

	if (link->speed == SWITCH_PORT_SPEED_1000 && !link->duplex)
		return -EINVAL;

	return FUNC5(sw_dev, port, link);
}