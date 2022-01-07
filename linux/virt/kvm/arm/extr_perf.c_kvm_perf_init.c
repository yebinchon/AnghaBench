
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvm_guest_cbs ;
 int perf_register_guest_info_callbacks (int *) ;

int kvm_perf_init(void)
{
 return perf_register_guest_info_callbacks(&kvm_guest_cbs);
}
