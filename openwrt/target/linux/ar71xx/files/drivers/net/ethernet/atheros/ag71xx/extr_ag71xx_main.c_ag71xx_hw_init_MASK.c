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
typedef  int u32 ;
struct ag71xx_platform_data {int reset_bit; scalar_t__ is_ar724x; } ;
struct ag71xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MAC_CFG1 ; 
 int AR71XX_RESET_GE0_PHY ; 
 int AR71XX_RESET_GE1_PHY ; 
 int /*<<< orphan*/  MAC_CFG1_SR ; 
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 struct ag71xx_platform_data* FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct ag71xx *ag)
{
	struct ag71xx_platform_data *pdata = FUNC1(ag);
	u32 reset_mask = pdata->reset_bit;

	FUNC3(ag);

	if (pdata->is_ar724x) {
		u32 reset_phy = reset_mask;

		reset_phy &= AR71XX_RESET_GE0_PHY | AR71XX_RESET_GE1_PHY;
		reset_mask &= ~(AR71XX_RESET_GE0_PHY | AR71XX_RESET_GE1_PHY);

		FUNC6(reset_phy);
		FUNC7(50);
		FUNC5(reset_phy);
		FUNC7(200);
	}

	FUNC4(ag, AG71XX_REG_MAC_CFG1, MAC_CFG1_SR);
	FUNC8(20);

	FUNC6(reset_mask);
	FUNC7(100);
	FUNC5(reset_mask);
	FUNC7(200);

	FUNC2(ag);

	FUNC0(ag);
}