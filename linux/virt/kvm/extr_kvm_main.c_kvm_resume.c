
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int ) ;
 int hardware_enable_nolock (int *) ;
 int kvm_count_lock ;
 scalar_t__ kvm_usage_count ;
 int lockdep_is_held (int *) ;

__attribute__((used)) static void kvm_resume(void)
{
 if (kvm_usage_count) {



  hardware_enable_nolock(((void*)0));
 }
}
