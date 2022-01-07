
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vgic_irq {unsigned long priority; int irq_lock; } ;
struct kvm_vcpu {int kvm; } ;
typedef int gpa_t ;


 unsigned long GENMASK (int,scalar_t__) ;
 scalar_t__ VGIC_ADDR_TO_INTID (int ,int) ;
 scalar_t__ VGIC_PRI_BITS ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct vgic_irq* vgic_get_irq (int ,struct kvm_vcpu*,scalar_t__) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;

void vgic_mmio_write_priority(struct kvm_vcpu *vcpu,
         gpa_t addr, unsigned int len,
         unsigned long val)
{
 u32 intid = VGIC_ADDR_TO_INTID(addr, 8);
 int i;
 unsigned long flags;

 for (i = 0; i < len; i++) {
  struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);

  raw_spin_lock_irqsave(&irq->irq_lock, flags);

  irq->priority = (val >> (i * 8)) & GENMASK(7, 8 - VGIC_PRI_BITS);
  raw_spin_unlock_irqrestore(&irq->irq_lock, flags);

  vgic_put_irq(vcpu->kvm, irq);
 }
}
