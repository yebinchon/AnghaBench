
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_pmu {int * pmc; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int ARMV8_PMU_MAX_COUNTERS ;
 int kvm_pmu_release_perf_event (int *) ;

void kvm_pmu_vcpu_destroy(struct kvm_vcpu *vcpu)
{
 int i;
 struct kvm_pmu *pmu = &vcpu->arch.pmu;

 for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++)
  kvm_pmu_release_perf_event(&pmu->pmc[i]);
}
