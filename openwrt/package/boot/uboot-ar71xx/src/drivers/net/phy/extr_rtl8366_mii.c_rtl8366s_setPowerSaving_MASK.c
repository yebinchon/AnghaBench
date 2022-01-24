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
typedef  int uint16_t ;

/* Variables and functions */
 scalar_t__ RTL8366S_PHY_NO_MAX ; 
 scalar_t__ FUNC0 (scalar_t__,int,int*) ; 
 scalar_t__ FUNC1 (scalar_t__,int,int) ; 

int FUNC2(uint32_t phyNum, uint32_t enabled)
{
    uint16_t regData;

    if (phyNum > RTL8366S_PHY_NO_MAX)
        return -1;

    if (FUNC0(phyNum, 12, &regData))
        return -1;

    if (enabled)
        regData |= (1 << 12);
    else
        regData &= ~(1 << 12);

    if (FUNC1(phyNum, 12, regData))
        return -1;

    return 0;
}