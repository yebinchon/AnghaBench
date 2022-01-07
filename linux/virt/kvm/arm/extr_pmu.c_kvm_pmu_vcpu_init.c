
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_pmu {TYPE_2__* pmc; } ;
struct TYPE_3__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int idx; } ;


 int ARMV8_PMU_MAX_COUNTERS ;

void kvm_pmu_vcpu_init(struct kvm_vcpu *vcpu)
{
 int i;
 struct kvm_pmu *pmu = &vcpu->arch.pmu;

 for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++)
  pmu->pmc[i].idx = i;
}
