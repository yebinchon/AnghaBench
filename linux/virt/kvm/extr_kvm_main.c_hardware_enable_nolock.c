
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int cpumask_clear_cpu (int,int ) ;
 int cpumask_set_cpu (int,int ) ;
 scalar_t__ cpumask_test_cpu (int,int ) ;
 int cpus_hardware_enabled ;
 int hardware_enable_failed ;
 int kvm_arch_hardware_enable () ;
 int pr_info (char*,int) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static void hardware_enable_nolock(void *junk)
{
 int cpu = raw_smp_processor_id();
 int r;

 if (cpumask_test_cpu(cpu, cpus_hardware_enabled))
  return;

 cpumask_set_cpu(cpu, cpus_hardware_enabled);

 r = kvm_arch_hardware_enable();

 if (r) {
  cpumask_clear_cpu(cpu, cpus_hardware_enabled);
  atomic_inc(&hardware_enable_failed);
  pr_info("kvm: enabling virtualization on CPU%d failed\n", cpu);
 }
}
