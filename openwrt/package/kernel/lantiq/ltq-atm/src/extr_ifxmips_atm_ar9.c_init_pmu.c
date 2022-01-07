
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFX_PMU_MODULE_DSL_DFE ;
 int IFX_PMU_MODULE_PPE_EMA ;
 int IFX_PMU_MODULE_PPE_QSB ;
 int IFX_PMU_MODULE_PPE_SLL01 ;
 int IFX_PMU_MODULE_PPE_TC ;
 int IFX_PMU_MODULE_TPE ;
 int ltq_pmu_enable (int) ;

__attribute__((used)) static inline void init_pmu(void)
{
 ltq_pmu_enable(IFX_PMU_MODULE_PPE_SLL01 |
  IFX_PMU_MODULE_PPE_TC |
  IFX_PMU_MODULE_PPE_EMA |
  IFX_PMU_MODULE_PPE_QSB |
  IFX_PMU_MODULE_TPE |
  IFX_PMU_MODULE_DSL_DFE);
}
