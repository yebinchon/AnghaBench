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
struct phy_device {int link; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATU_OP ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int MV_ATUOP_FLUSH_ALL ; 
 int MV_ATUOP_INPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct phy_device *pdev)
{
	pdev->speed = SPEED_100;
	pdev->duplex = DUPLEX_FULL;
	pdev->link = 1;

	/* XXX ugly workaround: we can't force the switch
	 * to gracefully handle hosts moving from one port to another,
	 * so we have to regularly clear the ATU database */

	/* wait for the ATU to become available */
	FUNC1(pdev, FUNC0(ATU_OP), MV_ATUOP_INPROGRESS, 0);

	/* flush the ATU */
	FUNC2(pdev, FUNC0(ATU_OP),
		MV_ATUOP_INPROGRESS |
		MV_ATUOP_FLUSH_ALL
	);

	/* wait for operation to complete */
	FUNC1(pdev, FUNC0(ATU_OP), MV_ATUOP_INPROGRESS, 0);

	return 0;
}