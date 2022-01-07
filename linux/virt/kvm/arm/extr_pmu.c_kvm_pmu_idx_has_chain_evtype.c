
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int ARMV8_PMUV3_PERFCTR_CHAIN ;
 int ARMV8_PMU_CYCLE_IDX ;
 int ARMV8_PMU_EVTYPE_EVENT ;
 int PMEVTYPER0_EL0 ;
 int __vcpu_sys_reg (struct kvm_vcpu*,int) ;

__attribute__((used)) static bool kvm_pmu_idx_has_chain_evtype(struct kvm_vcpu *vcpu, u64 select_idx)
{
 u64 eventsel, reg;

 select_idx |= 0x1;

 if (select_idx == ARMV8_PMU_CYCLE_IDX)
  return 0;

 reg = PMEVTYPER0_EL0 + select_idx;
 eventsel = __vcpu_sys_reg(vcpu, reg) & ARMV8_PMU_EVTYPE_EVENT;

 return eventsel == ARMV8_PMUV3_PERFCTR_CHAIN;
}
