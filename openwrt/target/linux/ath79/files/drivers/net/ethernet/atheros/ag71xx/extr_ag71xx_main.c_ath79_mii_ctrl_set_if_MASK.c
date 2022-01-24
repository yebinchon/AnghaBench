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
typedef  unsigned int u32 ;
struct ag71xx {int /*<<< orphan*/  mii_base; } ;

/* Variables and functions */
 unsigned int AR71XX_MII_CTRL_IF_MASK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ag71xx *ag, unsigned int mii_if)
{
	u32 t;

	t = FUNC0(ag->mii_base);
	t &= ~(AR71XX_MII_CTRL_IF_MASK);
	t |= (mii_if & AR71XX_MII_CTRL_IF_MASK);
	FUNC1(t, ag->mii_base);
}