
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int cpumask_var_t ;


 int GFP_ATOMIC ;
 int free_cpumask_var (int ) ;
 int kvm_make_vcpus_request_mask (struct kvm*,unsigned int,int *,int ) ;
 int zalloc_cpumask_var (int *,int ) ;

bool kvm_make_all_cpus_request(struct kvm *kvm, unsigned int req)
{
 cpumask_var_t cpus;
 bool called;

 zalloc_cpumask_var(&cpus, GFP_ATOMIC);

 called = kvm_make_vcpus_request_mask(kvm, req, ((void*)0), cpus);

 free_cpumask_var(cpus);
 return called;
}
