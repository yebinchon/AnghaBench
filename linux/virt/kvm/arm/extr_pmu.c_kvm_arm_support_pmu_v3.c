
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ perf_num_counters () ;

bool kvm_arm_support_pmu_v3(void)
{





 return (perf_num_counters() > 0);
}
