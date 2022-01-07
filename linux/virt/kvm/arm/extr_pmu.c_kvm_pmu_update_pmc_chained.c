
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
struct kvm_pmu {int chained; struct kvm_pmc* pmc; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pmc {int idx; } ;


 int clear_bit (int,int ) ;
 scalar_t__ kvm_pmu_idx_has_chain_evtype (struct kvm_vcpu*,int) ;
 int kvm_pmu_pmc_is_chained (struct kvm_pmc*) ;
 int kvm_pmu_stop_counter (struct kvm_vcpu*,struct kvm_pmc*) ;
 int set_bit (int,int ) ;

__attribute__((used)) static void kvm_pmu_update_pmc_chained(struct kvm_vcpu *vcpu, u64 select_idx)
{
 struct kvm_pmu *pmu = &vcpu->arch.pmu;
 struct kvm_pmc *pmc = &pmu->pmc[select_idx];

 if (kvm_pmu_idx_has_chain_evtype(vcpu, pmc->idx)) {




  if (!kvm_pmu_pmc_is_chained(pmc))
   kvm_pmu_stop_counter(vcpu, pmc);

  set_bit(pmc->idx >> 1, vcpu->arch.pmu.chained);
 } else {
  clear_bit(pmc->idx >> 1, vcpu->arch.pmu.chained);
 }
}
