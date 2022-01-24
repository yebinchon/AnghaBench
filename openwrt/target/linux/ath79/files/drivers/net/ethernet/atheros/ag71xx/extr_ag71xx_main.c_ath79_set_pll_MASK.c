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
struct ag71xx {int* pllreg; int /*<<< orphan*/  pllregmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct ag71xx *ag)
{
	u32 pll_cfg = ag->pllreg[0];
	u32 pll_shift = ag->pllreg[2];

	if (!ag->pllregmap)
		return;

	FUNC1(ag->pllregmap, pll_cfg, 3 << pll_shift, 2 << pll_shift);
	FUNC2(100);

	FUNC0(ag);

	FUNC1(ag->pllregmap, pll_cfg, 3 << pll_shift, 3 << pll_shift);
	FUNC2(100);

	FUNC1(ag->pllregmap, pll_cfg, 3 << pll_shift, 0);
	FUNC2(100);
}