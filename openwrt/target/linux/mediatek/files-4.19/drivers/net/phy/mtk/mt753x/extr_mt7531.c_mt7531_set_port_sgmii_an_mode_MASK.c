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
typedef  int u32 ;
struct mt753x_port_cfg {int speed; } ;
struct gsw_mt753x {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
#define  MAC_SPD_1000 129 
#define  MAC_SPD_2500 128 
 int MT753X_NUM_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int RG_TPHY_SPEED_1000 ; 
 int RG_TPHY_SPEED_2500 ; 
 int RG_TPHY_SPEED_M ; 
 int RG_TPHY_SPEED_S ; 
 int SGMII_AN_RESTART ; 
 int SGMII_LINK_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SGMII_REMOTE_FAULT_DIS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct gsw_mt753x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gsw_mt753x*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct gsw_mt753x *gsw, u32 port,
					 struct mt753x_port_cfg *port_cfg)
{
	u32 speed, port_base, val;
	ktime_t timeout;
	u32 timeout_us;

	if (port < 5 || port >= MT753X_NUM_PORTS) {
		FUNC3(gsw->dev, "port %d is not a SGMII port\n", port);
		return -EINVAL;
	}

	port_base = port - 5;

	switch (port_cfg->speed) {
	case MAC_SPD_1000:
		speed = RG_TPHY_SPEED_1000;
		break;
	case MAC_SPD_2500:
		speed = RG_TPHY_SPEED_2500;
		break;
	default:
		FUNC3(gsw->dev, "invalid SGMII speed idx %d for port %d\n",
			 port_cfg->speed, port);

		speed = RG_TPHY_SPEED_1000;
	}

	/* Step 1: Speed select register setting */
	val = FUNC7(gsw, FUNC1(port_base));
	val &= ~RG_TPHY_SPEED_M;
	val |= speed << RG_TPHY_SPEED_S;
	FUNC8(gsw, FUNC1(port_base), val);

	/* Step 2: Remote fault disable */
	val = FUNC7(gsw, FUNC2(port));
	val |= SGMII_REMOTE_FAULT_DIS;
	FUNC8(gsw, FUNC2(port), val);

	/* Step 3: Setting Link partner's AN enable = 1 */

	/* Step 4: Setting Link partner's device ability for speed/duplex */

	/* Step 5: AN re-start */
	val = FUNC7(gsw, FUNC0(port));
	val |= SGMII_AN_RESTART;
	FUNC8(gsw, FUNC0(port), val);

	/* Step 6: Special setting for PHYA ==> reserved for flexible */

	/* Step 7 : Polling SGMII_LINK_STATUS */
	timeout_us = 2000000;
	timeout = FUNC4(FUNC6(), timeout_us);
	while (1) {
		val = FUNC7(gsw, FUNC0(port_base));
		val &= SGMII_LINK_STATUS;

		if (val)
			break;

		if (FUNC5(FUNC6(), timeout) > 0)
			return -ETIMEDOUT;
	}

	return 0;
}