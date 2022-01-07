
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int remote_tlb_flush; } ;
struct kvm {int tlbs_dirty; TYPE_1__ stat; } ;


 int KVM_REQ_TLB_FLUSH ;
 int cmpxchg (int *,long,int ) ;
 int kvm_arch_flush_remote_tlb (struct kvm*) ;
 scalar_t__ kvm_make_all_cpus_request (struct kvm*,int ) ;
 long smp_load_acquire (int *) ;

void kvm_flush_remote_tlbs(struct kvm *kvm)
{




 long dirty_count = smp_load_acquire(&kvm->tlbs_dirty);
 if (!kvm_arch_flush_remote_tlb(kvm)
     || kvm_make_all_cpus_request(kvm, KVM_REQ_TLB_FLUSH))
  ++kvm->stat.remote_tlb_flush;
 cmpxchg(&kvm->tlbs_dirty, dirty_count, 0);
}
