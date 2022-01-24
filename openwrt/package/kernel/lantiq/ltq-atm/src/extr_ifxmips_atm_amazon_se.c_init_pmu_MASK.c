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
 int IFX_PMU_MODULE_DSL_DFE ; 
 int IFX_PMU_MODULE_PPE_EMA ; 
 int IFX_PMU_MODULE_PPE_SLL01 ; 
 int IFX_PMU_MODULE_PPE_TC ; 
 int IFX_PMU_MODULE_TPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(void)
{
    //*(unsigned long *)0xBF10201C &= ~((1 << 15) | (1 << 13) | (1 << 9));
    //PPE_TOP_PMU_SETUP(IFX_PMU_ENABLE);
/*    PPE_SLL01_PMU_SETUP(IFX_PMU_ENABLE);
    PPE_TC_PMU_SETUP(IFX_PMU_ENABLE);
    PPE_EMA_PMU_SETUP(IFX_PMU_ENABLE);
    //PPE_QSB_PMU_SETUP(IFX_PMU_ENABLE);
    PPE_TPE_PMU_SETUP(IFX_PMU_ENABLE);
    DSL_DFE_PMU_SETUP(IFX_PMU_ENABLE);*/
	FUNC0(IFX_PMU_MODULE_PPE_SLL01 |
		IFX_PMU_MODULE_PPE_TC |
		IFX_PMU_MODULE_PPE_EMA |
		IFX_PMU_MODULE_TPE |
		IFX_PMU_MODULE_DSL_DFE);
}