
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hardware_disable_nolock (int *) ;
 scalar_t__ kvm_usage_count ;

__attribute__((used)) static int kvm_suspend(void)
{
 if (kvm_usage_count)
  hardware_disable_nolock(((void*)0));
 return 0;
}
