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
struct ar8xxx_priv {int dummy; } ;

/* Variables and functions */
 int AR8216_ATU_CTRL_AGE_EN ; 
 int AR8216_ATU_CTRL_LEARN_CHANGE ; 
 int AR8216_GLOBAL_CPUPORT_EN ; 
 int AR8216_GLOBAL_CPUPORT_MIRROR_PORT_S ; 
 int /*<<< orphan*/  AR8216_REG_ATU_CTRL ; 
 int /*<<< orphan*/  AR8216_REG_FLOOD_MASK ; 
 int /*<<< orphan*/  AR8216_REG_GLOBAL_CPUPORT ; 
 int /*<<< orphan*/  AR8216_REG_GLOBAL_CTRL ; 
 int /*<<< orphan*/  AR8216_REG_MIB_FUNC ; 
 int /*<<< orphan*/  AR8216_REG_SERVICE_TAG ; 
 int /*<<< orphan*/  AR8216_REG_TAG_PRIORITY ; 
 int /*<<< orphan*/  AR8216_SERVICE_TAG_M ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int AR8229_QM_CTRL_ARP_EN ; 
 int /*<<< orphan*/  AR8229_REG_QM_CTRL ; 
 int /*<<< orphan*/  AR8236_GCTRL_MTU ; 
 int AR8236_MIB_EN ; 
 int /*<<< orphan*/  FUNC2 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct ar8xxx_priv *priv)
{

	/* Enable CPU port, and disable mirror port */
	FUNC4(priv, AR8216_REG_GLOBAL_CPUPORT,
		     AR8216_GLOBAL_CPUPORT_EN |
		     (15 << AR8216_GLOBAL_CPUPORT_MIRROR_PORT_S));

	/* Setup TAG priority mapping */
	FUNC4(priv, AR8216_REG_TAG_PRIORITY, 0xfa50);

	/* Enable aging, MAC replacing */
	FUNC4(priv, AR8216_REG_ATU_CTRL,
		     0x2b /* 5 min age time */ |
		     AR8216_ATU_CTRL_AGE_EN |
		     AR8216_ATU_CTRL_LEARN_CHANGE);

	/* Enable ARP frame acknowledge */
	FUNC2(priv, AR8229_REG_QM_CTRL,
		       AR8229_QM_CTRL_ARP_EN);

	/* Enable Broadcast/Multicast frames transmitted to the CPU */
	FUNC2(priv, AR8216_REG_FLOOD_MASK,
		       FUNC0(0) |
		       FUNC1(0));

	/* setup MTU */
	FUNC3(priv, AR8216_REG_GLOBAL_CTRL,
		   AR8236_GCTRL_MTU, AR8236_GCTRL_MTU);

	/* Enable MIB counters */
	FUNC2(priv, AR8216_REG_MIB_FUNC,
		       AR8236_MIB_EN);

	/* setup Service TAG */
	FUNC3(priv, AR8216_REG_SERVICE_TAG, AR8216_SERVICE_TAG_M, 0);
}