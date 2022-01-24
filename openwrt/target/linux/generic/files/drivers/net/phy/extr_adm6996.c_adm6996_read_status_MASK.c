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
struct phy_device {int link; int /*<<< orphan*/  attached_dev; int /*<<< orphan*/  (* adjust_link ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  state; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  PHY_RUNNING ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	phydev->speed = SPEED_100;
	phydev->duplex = DUPLEX_FULL;
	phydev->link = 1;

	phydev->state = PHY_RUNNING;
	FUNC0(phydev->attached_dev);
	phydev->adjust_link(phydev->attached_dev);

	return 0;
}