
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int ARMV8_PMU_PMCR_E ;
 int BIT (int ) ;
 int PMCNTENSET_EL0 ;
 int PMCR_EL0 ;
 int __vcpu_sys_reg (struct kvm_vcpu*,int ) ;

__attribute__((used)) static bool kvm_pmu_counter_is_enabled(struct kvm_vcpu *vcpu, u64 select_idx)
{
 return (__vcpu_sys_reg(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_E) &&
        (__vcpu_sys_reg(vcpu, PMCNTENSET_EL0) & BIT(select_idx));
}
