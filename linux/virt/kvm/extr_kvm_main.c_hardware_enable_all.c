
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int hardware_disable_all_nolock () ;
 int hardware_enable_failed ;
 int hardware_enable_nolock ;
 int kvm_count_lock ;
 int kvm_usage_count ;
 int on_each_cpu (int ,int *,int) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static int hardware_enable_all(void)
{
 int r = 0;

 raw_spin_lock(&kvm_count_lock);

 kvm_usage_count++;
 if (kvm_usage_count == 1) {
  atomic_set(&hardware_enable_failed, 0);
  on_each_cpu(hardware_enable_nolock, ((void*)0), 1);

  if (atomic_read(&hardware_enable_failed)) {
   hardware_disable_all_nolock();
   r = -EBUSY;
  }
 }

 raw_spin_unlock(&kvm_count_lock);

 return r;
}
