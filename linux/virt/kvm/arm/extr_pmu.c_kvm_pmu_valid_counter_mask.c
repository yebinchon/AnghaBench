
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int ARMV8_PMU_CYCLE_IDX ;
 int ARMV8_PMU_PMCR_N_MASK ;
 int ARMV8_PMU_PMCR_N_SHIFT ;
 int BIT (int ) ;
 int GENMASK (int,int ) ;
 int PMCR_EL0 ;
 int __vcpu_sys_reg (struct kvm_vcpu*,int ) ;

u64 kvm_pmu_valid_counter_mask(struct kvm_vcpu *vcpu)
{
 u64 val = __vcpu_sys_reg(vcpu, PMCR_EL0) >> ARMV8_PMU_PMCR_N_SHIFT;

 val &= ARMV8_PMU_PMCR_N_MASK;
 if (val == 0)
  return BIT(ARMV8_PMU_CYCLE_IDX);
 else
  return GENMASK(val - 1, 0) | BIT(ARMV8_PMU_CYCLE_IDX);
}
