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
typedef  int uint32_t ;
typedef  scalar_t__ status_t ;
typedef  scalar_t__ phy_loop_t ;
typedef  int /*<<< orphan*/  ENET_Type ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_BASICCONTROL_REG ; 
 int PHY_BCTL_LOOP_MASK ; 
 int /*<<< orphan*/  PHY_CONTROL2_REG ; 
 int PHY_CTL2_REMOTELOOP_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ kPHY_LocalLoop ; 
 scalar_t__ kStatus_Success ; 

status_t FUNC2(ENET_Type *base, uint32_t phyAddr, phy_loop_t mode, bool enable)
{
    status_t result;
    uint32_t data = 0;

    /* Set the loop mode. */
    if (enable)
    {
        if (mode == kPHY_LocalLoop)
        {
            /* First read the current status in control register. */
            result = FUNC0(base, phyAddr, PHY_BASICCONTROL_REG, &data);
            if (result == kStatus_Success)
            {
                return FUNC1(base, phyAddr, PHY_BASICCONTROL_REG, (data | PHY_BCTL_LOOP_MASK));
            }
        }
        else
        {
            /* First read the current status in control register. */
            result = FUNC0(base, phyAddr, PHY_CONTROL2_REG, &data);
            if (result == kStatus_Success)
            {
                return FUNC1(base, phyAddr, PHY_CONTROL2_REG, (data | PHY_CTL2_REMOTELOOP_MASK));
            }
        }
    }
    else
    {
        /* Disable the loop mode. */
        if (mode == kPHY_LocalLoop)
        {
            /* First read the current status in the basic control register. */
            result = FUNC0(base, phyAddr, PHY_BASICCONTROL_REG, &data);
            if (result == kStatus_Success)
            {
                return FUNC1(base, phyAddr, PHY_BASICCONTROL_REG, (data & ~PHY_BCTL_LOOP_MASK));
            }
        }
        else
        {
            /* First read the current status in control one register. */
            result = FUNC0(base, phyAddr, PHY_CONTROL2_REG, &data);
            if (result == kStatus_Success)
            {
                return FUNC1(base, phyAddr, PHY_CONTROL2_REG, (data & ~PHY_CTL2_REMOTELOOP_MASK));
            }
        }
    }
    return result;
}