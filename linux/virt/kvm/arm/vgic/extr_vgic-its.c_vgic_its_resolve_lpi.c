
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vgic_its {int enabled; } ;
struct vgic_irq {int dummy; } ;
struct TYPE_4__ {int lpis_enabled; } ;
struct TYPE_5__ {TYPE_1__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm {int dummy; } ;
struct its_ite {struct vgic_irq* irq; TYPE_3__* collection; } ;
struct TYPE_6__ {int target_addr; } ;


 int EBUSY ;
 int E_ITS_INT_UNMAPPED_INTERRUPT ;
 struct its_ite* find_ite (struct vgic_its*,int ,int ) ;
 int its_is_collection_mapped (TYPE_3__*) ;
 struct kvm_vcpu* kvm_get_vcpu (struct kvm*,int ) ;
 int vgic_its_cache_translation (struct kvm*,struct vgic_its*,int ,int ,struct vgic_irq*) ;

int vgic_its_resolve_lpi(struct kvm *kvm, struct vgic_its *its,
    u32 devid, u32 eventid, struct vgic_irq **irq)
{
 struct kvm_vcpu *vcpu;
 struct its_ite *ite;

 if (!its->enabled)
  return -EBUSY;

 ite = find_ite(its, devid, eventid);
 if (!ite || !its_is_collection_mapped(ite->collection))
  return E_ITS_INT_UNMAPPED_INTERRUPT;

 vcpu = kvm_get_vcpu(kvm, ite->collection->target_addr);
 if (!vcpu)
  return E_ITS_INT_UNMAPPED_INTERRUPT;

 if (!vcpu->arch.vgic_cpu.lpis_enabled)
  return -EBUSY;

 vgic_its_cache_translation(kvm, its, devid, eventid, ite->irq);

 *irq = ite->irq;
 return 0;
}
