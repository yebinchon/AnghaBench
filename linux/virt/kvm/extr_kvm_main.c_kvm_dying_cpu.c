
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hardware_disable_nolock (int *) ;
 int kvm_count_lock ;
 scalar_t__ kvm_usage_count ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static int kvm_dying_cpu(unsigned int cpu)
{
 raw_spin_lock(&kvm_count_lock);
 if (kvm_usage_count)
  hardware_disable_nolock(((void*)0));
 raw_spin_unlock(&kvm_count_lock);
 return 0;
}
