
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct kvm_pmu {struct kvm_pmc* pmc; } ;
struct TYPE_3__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pmc {TYPE_2__* perf_event; } ;
struct TYPE_4__ {scalar_t__ state; } ;


 int ARMV8_PMU_MAX_COUNTERS ;
 int ARMV8_PMU_PMCR_E ;
 int BIT (int) ;
 scalar_t__ PERF_EVENT_STATE_ACTIVE ;
 int PMCR_EL0 ;
 int __vcpu_sys_reg (struct kvm_vcpu*,int ) ;
 int kvm_debug (char*) ;
 int kvm_pmu_create_perf_event (struct kvm_vcpu*,int) ;
 scalar_t__ kvm_pmu_idx_is_high_counter (int) ;
 scalar_t__ kvm_pmu_pmc_is_chained (struct kvm_pmc*) ;
 int perf_event_enable (TYPE_2__*) ;

void kvm_pmu_enable_counter_mask(struct kvm_vcpu *vcpu, u64 val)
{
 int i;
 struct kvm_pmu *pmu = &vcpu->arch.pmu;
 struct kvm_pmc *pmc;

 if (!(__vcpu_sys_reg(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_E) || !val)
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


  if (pmc->perf_event) {
   perf_event_enable(pmc->perf_event);
   if (pmc->perf_event->state != PERF_EVENT_STATE_ACTIVE)
    kvm_debug("fail to enable perf event\n");
  }
 }
}
