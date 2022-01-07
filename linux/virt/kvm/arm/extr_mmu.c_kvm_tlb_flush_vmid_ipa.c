
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int phys_addr_t ;


 int __kvm_tlb_flush_vmid_ipa ;
 int kvm_call_hyp (int ,struct kvm*,int ) ;

__attribute__((used)) static void kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa)
{
 kvm_call_hyp(__kvm_tlb_flush_vmid_ipa, kvm, ipa);
}
