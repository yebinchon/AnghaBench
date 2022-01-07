
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_pmu {int chained; int * pmc; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int ARMV8_PMU_MAX_COUNTERS ;
 int ARMV8_PMU_MAX_COUNTER_PAIRS ;
 int bitmap_zero (int ,int ) ;
 int kvm_pmu_stop_counter (struct kvm_vcpu*,int *) ;

void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu)
{
 int i;
 struct kvm_pmu *pmu = &vcpu->arch.pmu;

 for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++)
  kvm_pmu_stop_counter(vcpu, &pmu->pmc[i]);

 bitmap_zero(vcpu->arch.pmu.chained, ARMV8_PMU_MAX_COUNTER_PAIRS);
}
