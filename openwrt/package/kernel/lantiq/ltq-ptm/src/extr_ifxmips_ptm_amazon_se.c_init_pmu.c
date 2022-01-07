
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSL_DFE_PMU_SETUP (int ) ;
 int IFX_PMU_ENABLE ;
 int PPE_EMA_PMU_SETUP (int ) ;
 int PPE_SLL01_PMU_SETUP (int ) ;
 int PPE_TC_PMU_SETUP (int ) ;
 int PPE_TPE_PMU_SETUP (int ) ;

__attribute__((used)) static inline void init_pmu(void)
{


    PPE_SLL01_PMU_SETUP(IFX_PMU_ENABLE);
    PPE_TC_PMU_SETUP(IFX_PMU_ENABLE);
    PPE_EMA_PMU_SETUP(IFX_PMU_ENABLE);

    PPE_TPE_PMU_SETUP(IFX_PMU_ENABLE);
    DSL_DFE_PMU_SETUP(IFX_PMU_ENABLE);
}
