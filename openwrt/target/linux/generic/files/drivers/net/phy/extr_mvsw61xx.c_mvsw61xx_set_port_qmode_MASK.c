#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  i; } ;
struct switch_val {size_t port_vlan; TYPE_2__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct mvsw61xx_state {TYPE_1__* ports; } ;
struct TYPE_3__ {int /*<<< orphan*/  qmode; } ;

/* Variables and functions */
 struct mvsw61xx_state* FUNC0 (struct switch_dev*) ; 

__attribute__((used)) static int
FUNC1(struct switch_dev *dev,
		const struct switch_attr *attr, struct switch_val *val)
{
	struct mvsw61xx_state *state = FUNC0(dev);

	state->ports[val->port_vlan].qmode = val->value.i;

	return 0;
}