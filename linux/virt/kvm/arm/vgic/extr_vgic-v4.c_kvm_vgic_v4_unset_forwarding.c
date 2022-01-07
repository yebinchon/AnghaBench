
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_its {int its_lock; } ;
struct vgic_irq {int hw; int host_irq; } ;
struct TYPE_2__ {int data; int devid; } ;
struct kvm_kernel_irq_routing_entry {TYPE_1__ msi; } ;
struct kvm {int dummy; } ;


 scalar_t__ IS_ERR (struct vgic_its*) ;
 int WARN_ON (int) ;
 int its_unmap_vlpi (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vgic_its* vgic_get_its (struct kvm*,struct kvm_kernel_irq_routing_entry*) ;
 int vgic_its_resolve_lpi (struct kvm*,struct vgic_its*,int ,int ,struct vgic_irq**) ;
 int vgic_supports_direct_msis (struct kvm*) ;

int kvm_vgic_v4_unset_forwarding(struct kvm *kvm, int virq,
     struct kvm_kernel_irq_routing_entry *irq_entry)
{
 struct vgic_its *its;
 struct vgic_irq *irq;
 int ret;

 if (!vgic_supports_direct_msis(kvm))
  return 0;





 its = vgic_get_its(kvm, irq_entry);
 if (IS_ERR(its))
  return 0;

 mutex_lock(&its->its_lock);

 ret = vgic_its_resolve_lpi(kvm, its, irq_entry->msi.devid,
       irq_entry->msi.data, &irq);
 if (ret)
  goto out;

 WARN_ON(!(irq->hw && irq->host_irq == virq));
 if (irq->hw) {
  irq->hw = 0;
  ret = its_unmap_vlpi(virq);
 }

out:
 mutex_unlock(&its->its_lock);
 return ret;
}
