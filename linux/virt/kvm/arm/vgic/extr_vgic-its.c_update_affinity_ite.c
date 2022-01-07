
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct kvm {int dummy; } ;
struct its_ite {int irq; TYPE_1__* collection; } ;
struct TYPE_2__ {int target_addr; } ;


 int its_is_collection_mapped (TYPE_1__*) ;
 struct kvm_vcpu* kvm_get_vcpu (struct kvm*,int ) ;
 int update_affinity (int ,struct kvm_vcpu*) ;

__attribute__((used)) static void update_affinity_ite(struct kvm *kvm, struct its_ite *ite)
{
 struct kvm_vcpu *vcpu;

 if (!its_is_collection_mapped(ite->collection))
  return;

 vcpu = kvm_get_vcpu(kvm, ite->collection->target_addr);
 update_affinity(ite->irq, vcpu);
}
