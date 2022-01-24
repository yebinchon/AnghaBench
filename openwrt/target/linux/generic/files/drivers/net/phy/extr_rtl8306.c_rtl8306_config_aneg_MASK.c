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
struct rtl_priv {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct phy_device {TYPE_1__ mdio; struct rtl_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  NRESTART ; 
 int /*<<< orphan*/  NWAY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct phy_device *pdev)
{
	struct rtl_priv *priv = pdev->priv;

	/* Only for WAN */
	if (pdev->mdio.addr == 0)
		return 0;

	/* Restart autonegotiation */
	FUNC1(&priv->dev, FUNC0(4, NWAY), 1);
	FUNC1(&priv->dev, FUNC0(4, NRESTART), 1);

	return 0;
}