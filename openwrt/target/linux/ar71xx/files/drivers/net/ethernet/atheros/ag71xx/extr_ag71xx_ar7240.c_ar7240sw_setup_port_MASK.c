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
typedef  int u32 ;
struct mii_bus {int dummy; } ;
struct ar7240sw {int* vlan_id; size_t* pvid; int vlan_tagged; scalar_t__ vlan; struct mii_bus* mii_bus; } ;

/* Variables and functions */
 unsigned int AR7240_PORT_CPU ; 
 int AR7240_PORT_CTRL_LEARN ; 
 int AR7240_PORT_CTRL_MIRROR_RX ; 
 int AR7240_PORT_CTRL_MIRROR_TX ; 
 int AR7240_PORT_CTRL_SINGLE_VLAN ; 
 int AR7240_PORT_CTRL_STATE_FORWARD ; 
 int AR7240_PORT_CTRL_VLAN_MODE_ADD ; 
 int AR7240_PORT_CTRL_VLAN_MODE_KEEP ; 
 int AR7240_PORT_CTRL_VLAN_MODE_S ; 
 int AR7240_PORT_CTRL_VLAN_MODE_STRIP ; 
 int AR7240_PORT_STATUS_DUPLEX ; 
 int AR7240_PORT_STATUS_LINK_AUTO ; 
 int AR7240_PORT_STATUS_RXFLOW ; 
 int AR7240_PORT_STATUS_RXMAC ; 
 int AR7240_PORT_STATUS_SPEED_1000 ; 
 int AR7240_PORT_STATUS_TXFLOW ; 
 int AR7240_PORT_STATUS_TXMAC ; 
 int AR7240_PORT_VLAN_DEST_PORTS_S ; 
 int AR7240_PORT_VLAN_MODE_PORT_ONLY ; 
 int AR7240_PORT_VLAN_MODE_S ; 
 int AR7240_PORT_VLAN_MODE_SECURE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int AR934X_PORT_VLAN1_DEFAULT_CVID_S ; 
 int AR934X_PORT_VLAN2_8021Q_MODE_S ; 
 int AR934X_PORT_VLAN2_PORT_VID_MEM_S ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (struct ar7240sw*,unsigned int) ; 
 int FUNC7 (struct ar7240sw*,unsigned int) ; 
 int FUNC8 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mii_bus*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct ar7240sw*) ; 

__attribute__((used)) static void FUNC11(struct ar7240sw *as, unsigned port, u8 portmask)
{
	struct mii_bus *mii = as->mii_bus;
	u32 ctrl;
	u32 vid, mode;

	ctrl = AR7240_PORT_CTRL_STATE_FORWARD | AR7240_PORT_CTRL_LEARN |
		AR7240_PORT_CTRL_SINGLE_VLAN;

	if (port == AR7240_PORT_CPU) {
		FUNC9(mii, FUNC1(port),
				   AR7240_PORT_STATUS_SPEED_1000 |
				   AR7240_PORT_STATUS_TXFLOW |
				   AR7240_PORT_STATUS_RXFLOW |
				   AR7240_PORT_STATUS_TXMAC |
				   AR7240_PORT_STATUS_RXMAC |
				   AR7240_PORT_STATUS_DUPLEX);
	} else {
		FUNC9(mii, FUNC1(port),
				   AR7240_PORT_STATUS_LINK_AUTO);
	}

	/* Set the default VID for this port */
	if (as->vlan) {
		vid = as->vlan_id[as->pvid[port]];
		mode = AR7240_PORT_VLAN_MODE_SECURE;
	} else {
		vid = port;
		mode = AR7240_PORT_VLAN_MODE_PORT_ONLY;
	}

	if (as->vlan) {
		if (as->vlan_tagged & FUNC5(port))
			ctrl |= AR7240_PORT_CTRL_VLAN_MODE_ADD <<
				AR7240_PORT_CTRL_VLAN_MODE_S;
		else
			ctrl |= AR7240_PORT_CTRL_VLAN_MODE_STRIP <<
				AR7240_PORT_CTRL_VLAN_MODE_S;
	} else {
		ctrl |= AR7240_PORT_CTRL_VLAN_MODE_KEEP <<
			AR7240_PORT_CTRL_VLAN_MODE_S;
	}

	if (!portmask) {
		if (port == AR7240_PORT_CPU)
			portmask = FUNC7(as, AR7240_PORT_CPU);
		else
			portmask = FUNC6(as, AR7240_PORT_CPU);
	}

	/* preserve mirror rx&tx flags */
	ctrl |= FUNC8(mii, FUNC0(port)) &
		(AR7240_PORT_CTRL_MIRROR_RX | AR7240_PORT_CTRL_MIRROR_TX);

	/* allow the port to talk to all other ports, but exclude its
	 * own ID to prevent frames from being reflected back to the
	 * port that they came from */
	portmask &= FUNC7(as, port);

	FUNC9(mii, FUNC0(port), ctrl);
	if (FUNC10(as)) {
		u32 vlan1, vlan2;

		vlan1 = (vid << AR934X_PORT_VLAN1_DEFAULT_CVID_S);
		vlan2 = (portmask << AR934X_PORT_VLAN2_PORT_VID_MEM_S) |
			(mode << AR934X_PORT_VLAN2_8021Q_MODE_S);
		FUNC9(mii, FUNC3(port), vlan1);
		FUNC9(mii, FUNC4(port), vlan2);
	} else {
		u32 vlan;

		vlan = vid | (mode << AR7240_PORT_VLAN_MODE_S) |
		       (portmask << AR7240_PORT_VLAN_DEST_PORTS_S);

		FUNC9(mii, FUNC2(port), vlan);
	}
}