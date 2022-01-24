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
struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ip17xx_state {int /*<<< orphan*/  proc_mii; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ip17xx_state*,int /*<<< orphan*/ ) ; 
 struct ip17xx_state* FUNC2 (struct switch_dev*) ; 

__attribute__((used)) static int FUNC3(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
	struct ip17xx_state *state = FUNC2(dev);
	int retval = -EINVAL;
	if (FUNC0(state->proc_mii))
		retval = FUNC1(state, state->proc_mii);

	if (retval < 0) {
		return retval;
	} else {
		val->value.i = retval;
		return 0;
	}
}