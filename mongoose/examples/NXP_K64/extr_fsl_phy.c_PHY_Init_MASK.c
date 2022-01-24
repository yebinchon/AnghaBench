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
typedef  size_t uint32_t ;
typedef  scalar_t__ status_t ;
typedef  int /*<<< orphan*/  ENET_Type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int) ; 
 int PHY_100BASETX_FULLDUPLEX_MASK ; 
 int PHY_100BASETX_HALFDUPLEX_MASK ; 
 int PHY_10BASETX_FULLDUPLEX_MASK ; 
 int PHY_10BASETX_HALFDUPLEX_MASK ; 
 int /*<<< orphan*/  PHY_AUTONEG_ADVERTISE_REG ; 
 int /*<<< orphan*/  PHY_BASICCONTROL_REG ; 
 int /*<<< orphan*/  PHY_BASICSTATUS_REG ; 
 int PHY_BCTL_AUTONEG_MASK ; 
 int PHY_BCTL_RESET_MASK ; 
 int PHY_BCTL_RESTART_AUTONEG_MASK ; 
 size_t PHY_BSTATUS_AUTONEGCOMP_MASK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,size_t*) ; 
 size_t PHY_TIMEOUT_COUNT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int) ; 
 scalar_t__ kStatus_PHY_AutoNegotiateFail ; 
 scalar_t__ kStatus_Success ; 
 int /*<<< orphan*/ * s_enetClock ; 

status_t FUNC5(ENET_Type *base, uint32_t phyAddr, uint32_t srcClock_Hz)
{
    uint32_t bssReg;
    uint32_t counter = PHY_TIMEOUT_COUNT;
    status_t result = kStatus_Success;
    uint32_t instance = FUNC1(base);

    /* Set SMI first. */
    FUNC0(s_enetClock[instance]);
    FUNC2(base, srcClock_Hz, false);

    /* Reset PHY. */
    result = FUNC4(base, phyAddr, PHY_BASICCONTROL_REG, PHY_BCTL_RESET_MASK);
    if (result == kStatus_Success)
    {
        /* Set the negotiation. */
        result = FUNC4(base, phyAddr, PHY_AUTONEG_ADVERTISE_REG,
                           (PHY_100BASETX_FULLDUPLEX_MASK | PHY_100BASETX_HALFDUPLEX_MASK |
                            PHY_10BASETX_FULLDUPLEX_MASK | PHY_10BASETX_HALFDUPLEX_MASK | 0x1U));
        if (result == kStatus_Success)
        {
            result = FUNC4(base, phyAddr, PHY_BASICCONTROL_REG,
                               (PHY_BCTL_AUTONEG_MASK | PHY_BCTL_RESTART_AUTONEG_MASK));
            if (result == kStatus_Success)
            {
                /* Check auto negotiation complete. */
                while (counter --)
                {
                    result = FUNC3(base, phyAddr, PHY_BASICSTATUS_REG, &bssReg);
                    if ( result == kStatus_Success)
                    {
                        if ((bssReg & PHY_BSTATUS_AUTONEGCOMP_MASK) != 0)
                        {
                            break;
                        } 
                    } 

                    if (!counter)
                    {
                        return kStatus_PHY_AutoNegotiateFail;
                    }
                }
            }
        }
    }

    return result;
}