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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTL8366S_PORT_ALL ; 
 int /*<<< orphan*/  RTL8366S_SSCR0 ; 
 int /*<<< orphan*/  RTL8366S_SSCR1 ; 
 struct rtl8366_smi* FUNC1 (struct switch_dev*) ; 

__attribute__((used)) static int FUNC2(struct switch_dev *dev,
					   const struct switch_attr *attr,
					   struct switch_val *val)
{
	struct rtl8366_smi *smi = FUNC1(dev);
	u32 portmask = 0;
	int err = 0;

	if (!val->value.i)
		portmask = RTL8366S_PORT_ALL;

	/* set learning for all ports */
	FUNC0(smi, RTL8366S_SSCR0, portmask);

	/* set auto ageing for all ports */
	FUNC0(smi, RTL8366S_SSCR1, portmask);

	return 0;
}