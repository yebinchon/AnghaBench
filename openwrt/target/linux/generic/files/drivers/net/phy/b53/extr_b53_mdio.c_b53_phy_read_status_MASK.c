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
struct phy_device {int speed; int link; int /*<<< orphan*/  attached_dev; int /*<<< orphan*/  (* adjust_link ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  state; int /*<<< orphan*/  duplex; struct b53_device* priv; } ;
struct b53_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  PHY_RUNNING ; 
 scalar_t__ FUNC0 (struct b53_device*) ; 
 scalar_t__ FUNC1 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev)
{
	struct b53_device *priv = phydev->priv;

	if (FUNC0(priv) || FUNC1(priv))
		phydev->speed = 100;
	else
		phydev->speed = 1000;

	phydev->duplex = DUPLEX_FULL;
	phydev->link = 1;
	phydev->state = PHY_RUNNING;

	FUNC2(phydev->attached_dev);
	phydev->adjust_link(phydev->attached_dev);

	return 0;
}