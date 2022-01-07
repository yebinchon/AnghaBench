
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int __kvm_tlb_flush_vmid ;
 int kvm_call_hyp (int ,struct kvm*) ;

void kvm_flush_remote_tlbs(struct kvm *kvm)
{
 kvm_call_hyp(__kvm_tlb_flush_vmid, kvm);
}
