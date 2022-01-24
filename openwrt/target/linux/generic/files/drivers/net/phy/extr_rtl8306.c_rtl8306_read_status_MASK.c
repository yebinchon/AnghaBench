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
struct switch_dev {int dummy; } ;
struct rtl_priv {struct switch_dev dev; } ;
struct TYPE_2__ {int addr; } ;
struct phy_device {int link; int /*<<< orphan*/  attached_dev; int /*<<< orphan*/  (* adjust_link ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  state; void* duplex; void* speed; TYPE_1__ mdio; struct rtl_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX ; 
 void* DUPLEX_FULL ; 
 void* DUPLEX_HALF ; 
 int /*<<< orphan*/  LINK ; 
 int /*<<< orphan*/  PHY_NOLINK ; 
 int /*<<< orphan*/  PHY_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPEED ; 
 void* SPEED_10 ; 
 void* SPEED_100 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct switch_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct phy_device *pdev)
{
	struct rtl_priv *priv = pdev->priv;
	struct switch_dev *dev = &priv->dev;

	if (pdev->mdio.addr == 4) {
		/* WAN */
		pdev->speed = FUNC3(dev, FUNC0(4, SPEED)) ? SPEED_100 : SPEED_10;
		pdev->duplex = FUNC3(dev, FUNC0(4, DUPLEX)) ? DUPLEX_FULL : DUPLEX_HALF;
		pdev->link = !!FUNC3(dev, FUNC0(4, LINK));
	} else {
		/* LAN */
		pdev->speed = SPEED_100;
		pdev->duplex = DUPLEX_FULL;
		pdev->link = 1;
	}

	/*
	 * Bypass generic PHY status read,
	 * it doesn't work with this switch
	 */
	if (pdev->link) {
		pdev->state = PHY_RUNNING;
		FUNC2(pdev->attached_dev);
		pdev->adjust_link(pdev->attached_dev);
	} else {
		pdev->state = PHY_NOLINK;
		FUNC1(pdev->attached_dev);
		pdev->adjust_link(pdev->attached_dev);
	}

	return 0;
}