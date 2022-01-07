
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pmc {int idx; } ;


 scalar_t__ kvm_pmu_idx_is_high_counter (int ) ;
 scalar_t__ kvm_pmu_pmc_is_chained (struct kvm_pmc*) ;

__attribute__((used)) static struct kvm_pmc *kvm_pmu_get_canonical_pmc(struct kvm_pmc *pmc)
{
 if (kvm_pmu_pmc_is_chained(pmc) &&
     kvm_pmu_idx_is_high_counter(pmc->idx))
  return pmc - 1;

 return pmc;
}
