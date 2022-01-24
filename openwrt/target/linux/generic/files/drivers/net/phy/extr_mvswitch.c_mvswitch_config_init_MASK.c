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
typedef  int u8 ;
struct phy_device {int /*<<< orphan*/  irq; void* advertising; void* supported; struct net_device* attached_dev; } ;
struct net_device {int features; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  eth_mangle_tx; int /*<<< orphan*/  eth_mangle_rx; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; struct mvswitch_priv* phy_ptr; } ;
struct mvswitch_priv {int* vlans; int orig_features; } ;

/* Variables and functions */
 void* ADVERTISED_100baseT_Full ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  ASSOC ; 
 int /*<<< orphan*/  ATU_CTRL ; 
 int /*<<< orphan*/  CONTROL ; 
 int /*<<< orphan*/  CTRL ; 
 int EINVAL ; 
 int /*<<< orphan*/  IFF_NO_IP_ALIGN ; 
 int /*<<< orphan*/  IFF_PROMISC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MV_ATUCTL_AGETIME_MIN ; 
 int MV_ATUCTL_ATU_1K ; 
 int MV_ATUCTL_NO_LEARN ; 
 int MV_ATUCTL_RESET ; 
 int MV_CPUPORT ; 
 int FUNC2 (int) ; 
 int MV_PORTCTRL_ENABLED ; 
 int MV_PORTCTRL_HEADER ; 
 int MV_PORTCTRL_RXTR ; 
 int MV_PORTCTRL_TXTR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int MV_PORTS ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int MV_SWITCHCTL_DROP ; 
 int MV_SWITCHCTL_MSIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int MV_WANPORT ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int /*<<< orphan*/  PHY_POLL ; 
 int /*<<< orphan*/  VLANMAP ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  mvswitch_mangle_rx ; 
 int /*<<< orphan*/  mvswitch_mangle_tx ; 
 int FUNC8 (struct phy_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 struct mvswitch_priv* FUNC10 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC12(struct phy_device *pdev)
{
	struct mvswitch_priv *priv = FUNC10(pdev);
	struct net_device *dev = pdev->attached_dev;
	u8 vlmap = 0;
	int i;

	if (!dev)
		return -EINVAL;

	FUNC9("%s: Marvell 88E6060 PHY driver attached.\n", dev->name);
	pdev->supported = ADVERTISED_100baseT_Full;
	pdev->advertising = ADVERTISED_100baseT_Full;
	dev->phy_ptr = priv;
	pdev->irq = PHY_POLL;
#ifdef HEADER_MODE
	dev->flags |= IFF_PROMISC;
#endif

	/* initialize default vlans */
	for (i = 0; i < MV_PORTS; i++)
		priv->vlans[(i == MV_WANPORT ? 2 : 1)] |= (1 << i);

	/* before entering reset, disable all ports */
	for (i = 0; i < MV_PORTS; i++)
		FUNC11(pdev, FUNC3(CONTROL, i), 0x00);

	FUNC7(2); /* wait for the status change to settle in */

	/* put the ATU in reset */
	FUNC11(pdev, FUNC6(ATU_CTRL), MV_ATUCTL_RESET);

	i = FUNC8(pdev, FUNC6(ATU_CTRL), MV_ATUCTL_RESET, 0);
	if (i < 0) {
		FUNC9("%s: Timeout waiting for the switch to reset.\n", dev->name);
		return i;
	}

	/* set the ATU flags */
	FUNC11(pdev, FUNC6(ATU_CTRL),
		MV_ATUCTL_NO_LEARN |
		MV_ATUCTL_ATU_1K |
		FUNC1(MV_ATUCTL_AGETIME_MIN) /* minimum without disabling ageing */
	);

	/* initialize the cpu port */
	FUNC11(pdev, FUNC3(CONTROL, MV_CPUPORT),
#ifdef HEADER_MODE
		MV_PORTCTRL_HEADER |
#else
		MV_PORTCTRL_RXTR |
		MV_PORTCTRL_TXTR |
#endif
		MV_PORTCTRL_ENABLED
	);
	/* wait for the phy change to settle in */
	FUNC7(2);
	for (i = 0; i < MV_PORTS; i++) {
		u8 pvid = 0;
		int j;

		vlmap = 0;

		/* look for the matching vlan */
		for (j = 0; j < FUNC0(priv->vlans); j++) {
			if (priv->vlans[j] & (1 << i)) {
				vlmap = priv->vlans[j];
				pvid = j;
			}
		}
		/* leave port unconfigured if it's not part of a vlan */
		if (!vlmap)
			continue;

		/* add the cpu port to the allowed destinations list */
		vlmap |= (1 << MV_CPUPORT);

		/* take port out of its own vlan destination map */
		vlmap &= ~(1 << i);

		/* apply vlan settings */
		FUNC11(pdev, FUNC3(VLANMAP, i),
			FUNC5(vlmap) |
			FUNC4(i)
		);

		/* re-enable port */
		FUNC11(pdev, FUNC3(CONTROL, i),
			MV_PORTCTRL_ENABLED
		);
	}

	FUNC11(pdev, FUNC3(VLANMAP, MV_CPUPORT),
		FUNC4(MV_CPUPORT)
	);

	/* set the port association vector */
	for (i = 0; i <= MV_PORTS; i++) {
		FUNC11(pdev, FUNC3(ASSOC, i),
			FUNC2(1 << i)
		);
	}

	/* init switch control */
	FUNC11(pdev, FUNC6(CTRL),
		MV_SWITCHCTL_MSIZE |
		MV_SWITCHCTL_DROP
	);

	dev->eth_mangle_rx = mvswitch_mangle_rx;
	dev->eth_mangle_tx = mvswitch_mangle_tx;
	priv->orig_features = dev->features;

#ifdef HEADER_MODE
	dev->priv_flags |= IFF_NO_IP_ALIGN;
	dev->features |= NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_TX;
#else
	dev->features |= NETIF_F_HW_VLAN_CTAG_RX;
#endif

	return 0;
}