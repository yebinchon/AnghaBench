
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hardware_disable_all_nolock () ;
 int kvm_count_lock ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static void hardware_disable_all(void)
{
 raw_spin_lock(&kvm_count_lock);
 hardware_disable_all_nolock();
 raw_spin_unlock(&kvm_count_lock);
}
