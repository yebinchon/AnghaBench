
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ ARMV8_PMU_CYCLE_IDX ;
 int ARMV8_PMU_PMCR_LC ;
 int PMCR_EL0 ;
 int __vcpu_sys_reg (struct kvm_vcpu*,int ) ;

__attribute__((used)) static bool kvm_pmu_idx_is_64bit(struct kvm_vcpu *vcpu, u64 select_idx)
{
 return (select_idx == ARMV8_PMU_CYCLE_IDX &&
  __vcpu_sys_reg(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_LC);
}
