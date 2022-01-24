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
struct rtl8367_platform_data {int /*<<< orphan*/  extif1_cfg; int /*<<< orphan*/  extif0_cfg; } ;
struct rtl8366_smi {TYPE_1__* parent; } ;
struct TYPE_2__ {scalar_t__ of_node; struct rtl8367_platform_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RTL8367_NUM_PORTS ; 
 int /*<<< orphan*/  RTL8367_PORTS_ALL ; 
 int RTL8367_PORT_CFG_EGRESS_MODE_MASK ; 
 int RTL8367_PORT_CFG_EGRESS_MODE_ORIGINAL ; 
 int RTL8367_PORT_CFG_EGRESS_MODE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int RTL8367_SWC0_MAX_LENGTH_1536 ; 
 int RTL8367_SWC0_MAX_LENGTH_MASK ; 
 int /*<<< orphan*/  RTL8367_SWC0_REG ; 
 int /*<<< orphan*/  RTL8367_VLAN_INGRESS_REG ; 
 int FUNC3 (struct rtl8366_smi*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtl8366_smi*,int,char*) ; 
 int FUNC5 (struct rtl8366_smi*) ; 
 int FUNC6 (struct rtl8366_smi*,int) ; 
 int FUNC7 (struct rtl8366_smi*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct rtl8366_smi*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct rtl8366_smi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct rtl8366_smi*) ; 

__attribute__((used)) static int FUNC11(struct rtl8366_smi *smi)
{
	struct rtl8367_platform_data *pdata;
	int err;
	int i;

	pdata = smi->parent->platform_data;

	err = FUNC5(smi);
	if (err)
		return err;

	/* initialize external interfaces */
	if (smi->parent->of_node) {
		err = FUNC4(smi, 0, "realtek,extif0");
		if (err)
			return err;

		err = FUNC4(smi, 1, "realtek,extif1");
		if (err)
			return err;
	} else {
		err = FUNC3(smi, 0, pdata->extif0_cfg);
		if (err)
			return err;

		err = FUNC3(smi, 1, pdata->extif1_cfg);
		if (err)
			return err;
	}

	/* set maximum packet length to 1536 bytes */
	FUNC0(smi, RTL8367_SWC0_REG, RTL8367_SWC0_MAX_LENGTH_MASK,
		RTL8367_SWC0_MAX_LENGTH_1536);

	/*
	 * discard VLAN tagged packets if the port is not a member of
	 * the VLAN with which the packets is associated.
	 */
	FUNC1(smi, RTL8367_VLAN_INGRESS_REG, RTL8367_PORTS_ALL);

	/*
	 * Setup egress tag mode for each port.
	 */
	for (i = 0; i < RTL8367_NUM_PORTS; i++)
		FUNC0(smi,
			FUNC2(i),
			RTL8367_PORT_CFG_EGRESS_MODE_MASK <<
				RTL8367_PORT_CFG_EGRESS_MODE_SHIFT,
			RTL8367_PORT_CFG_EGRESS_MODE_ORIGINAL <<
				RTL8367_PORT_CFG_EGRESS_MODE_SHIFT);

	/* setup LEDs */
	err = FUNC9(smi, 0, RTL8367_PORTS_ALL);
	if (err)
		return err;

	err = FUNC8(smi, 0);
	if (err)
		return err;

	err = FUNC10(smi);
	if (err)
		return err;

	err = FUNC6(smi, 1);
	if (err)
		return err;

	err = FUNC7(smi, 0, 2);
	if (err)
		return err;

	return 0;
}