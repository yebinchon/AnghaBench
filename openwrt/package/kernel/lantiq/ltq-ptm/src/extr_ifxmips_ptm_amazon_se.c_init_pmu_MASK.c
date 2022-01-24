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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFX_PMU_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(void)
{
    //*(unsigned long *)0xBF10201C &= ~((1 << 15) | (1 << 13) | (1 << 9));
    //PPE_TOP_PMU_SETUP(IFX_PMU_ENABLE);
    FUNC2(IFX_PMU_ENABLE);
    FUNC3(IFX_PMU_ENABLE);
    FUNC1(IFX_PMU_ENABLE);
    //PPE_QSB_PMU_SETUP(IFX_PMU_ENABLE);
    FUNC4(IFX_PMU_ENABLE);
    FUNC0(IFX_PMU_ENABLE);
}