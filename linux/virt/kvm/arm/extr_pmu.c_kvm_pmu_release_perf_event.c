
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pmc {int * perf_event; } ;


 struct kvm_pmc* kvm_pmu_get_canonical_pmc (struct kvm_pmc*) ;
 int perf_event_disable (int *) ;
 int perf_event_release_kernel (int *) ;

__attribute__((used)) static void kvm_pmu_release_perf_event(struct kvm_pmc *pmc)
{
 pmc = kvm_pmu_get_canonical_pmc(pmc);
 if (pmc->perf_event) {
  perf_event_disable(pmc->perf_event);
  perf_event_release_kernel(pmc->perf_event);
  pmc->perf_event = ((void*)0);
 }
}
