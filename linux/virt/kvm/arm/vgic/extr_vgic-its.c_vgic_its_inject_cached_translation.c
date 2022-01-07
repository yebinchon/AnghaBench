
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vgic_irq {int pending_latch; int irq_lock; } ;
struct kvm_msi {int address_lo; int data; int devid; scalar_t__ address_hi; } ;
struct kvm {int dummy; } ;
typedef int phys_addr_t ;


 int raw_spin_lock_irqsave (int *,unsigned long) ;
 struct vgic_irq* vgic_its_check_cache (struct kvm*,int,int ,int ) ;
 int vgic_queue_irq_unlock (struct kvm*,struct vgic_irq*,unsigned long) ;

int vgic_its_inject_cached_translation(struct kvm *kvm, struct kvm_msi *msi)
{
 struct vgic_irq *irq;
 unsigned long flags;
 phys_addr_t db;

 db = (u64)msi->address_hi << 32 | msi->address_lo;
 irq = vgic_its_check_cache(kvm, db, msi->devid, msi->data);

 if (!irq)
  return -1;

 raw_spin_lock_irqsave(&irq->irq_lock, flags);
 irq->pending_latch = 1;
 vgic_queue_irq_unlock(kvm, irq, flags);

 return 0;
}
