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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  status_t ;
typedef  int /*<<< orphan*/  ENET_Type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int ENET_EIR_MII_MASK ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ PHY_TIMEOUT_COUNT ; 
 int /*<<< orphan*/  kENET_MiiWriteValidFrame ; 
 int /*<<< orphan*/  kStatus_PHY_SMIVisitTimeout ; 
 int /*<<< orphan*/  kStatus_Success ; 

status_t FUNC3(ENET_Type *base, uint32_t phyAddr, uint32_t phyReg, uint32_t data)
{
    uint32_t counter;

    /* Clear the SMI interrupt event. */
    FUNC0(base, ENET_EIR_MII_MASK);

    /* Starts a SMI write command. */
    FUNC2(base, phyAddr, phyReg, kENET_MiiWriteValidFrame, data);

    /* Wait for SMI complete. */
    for (counter = PHY_TIMEOUT_COUNT; counter > 0; counter--)
    {
        if (FUNC1(base) & ENET_EIR_MII_MASK)
        {
            break;
        }
    }

    /* Check for timeout. */
    if (!counter)
    {
        return kStatus_PHY_SMIVisitTimeout;
    }

    /* Clear MII interrupt event. */
    FUNC0(base, ENET_EIR_MII_MASK);

    return kStatus_Success;
}