
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvm_pmu {struct kvm_pmc* pmc; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pmc {scalar_t__ perf_event; } ;


 int ARMV8_PMU_MAX_COUNTERS ;
 int BIT (int) ;
 int kvm_pmu_create_perf_event (struct kvm_vcpu*,int) ;
 scalar_t__ kvm_pmu_idx_is_high_counter (int) ;
 scalar_t__ kvm_pmu_pmc_is_chained (struct kvm_pmc*) ;
 int perf_event_disable (scalar_t__) ;

void kvm_pmu_disable_counter_mask(struct kvm_vcpu *vcpu, u64 val)
{
 int i;
 struct kvm_pmu *pmu = &vcpu->arch.pmu;
 struct kvm_pmc *pmc;

 if (!val)
  return;

 for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++) {
  if (!(val & BIT(i)))
   continue;

  pmc = &pmu->pmc[i];





  if (kvm_pmu_pmc_is_chained(pmc) &&
      kvm_pmu_idx_is_high_counter(i)) {
   kvm_pmu_create_perf_event(vcpu, i);
   continue;
  }


  if (pmc->perf_event)
   perf_event_disable(pmc->perf_event);
 }
}
