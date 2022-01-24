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
struct ag71xx {int speed; int /*<<< orphan*/  mii_base; } ;

/* Variables and functions */
 unsigned int AR71XX_MII_CTRL_SPEED_10 ; 
 unsigned int AR71XX_MII_CTRL_SPEED_100 ; 
 unsigned int AR71XX_MII_CTRL_SPEED_1000 ; 
 unsigned int AR71XX_MII_CTRL_SPEED_MASK ; 
 unsigned int AR71XX_MII_CTRL_SPEED_SHIFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
#define  SPEED_10 130 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ag71xx *ag)
{
	unsigned int mii_speed;
	u32 t;

	if (!ag->mii_base)
		return;

	switch (ag->speed) {
	case SPEED_10:
		mii_speed =  AR71XX_MII_CTRL_SPEED_10;
		break;
	case SPEED_100:
		mii_speed =  AR71XX_MII_CTRL_SPEED_100;
		break;
	case SPEED_1000:
		mii_speed =  AR71XX_MII_CTRL_SPEED_1000;
		break;
	default:
		FUNC0();
	}

	t = FUNC1(ag->mii_base);
	t &= ~(AR71XX_MII_CTRL_SPEED_MASK << AR71XX_MII_CTRL_SPEED_SHIFT);
	t |= mii_speed << AR71XX_MII_CTRL_SPEED_SHIFT;
	FUNC2(t, ag->mii_base);
}