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

/* Variables and functions */
 int /*<<< orphan*/  RT5350_SDM_CFG ; 
 int RT5350_SDM_ICS_EN ; 
 int RT5350_SDM_TCS_EN ; 
 int RT5350_SDM_UCS_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(bool enable)
{
	if (enable)
		FUNC1(FUNC0(RT5350_SDM_CFG) | (RT5350_SDM_ICS_EN |
				RT5350_SDM_TCS_EN | RT5350_SDM_UCS_EN),
				RT5350_SDM_CFG);
	else
		FUNC1(FUNC0(RT5350_SDM_CFG) & ~(RT5350_SDM_ICS_EN |
				RT5350_SDM_TCS_EN | RT5350_SDM_UCS_EN),
				RT5350_SDM_CFG);
}