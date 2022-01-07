
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vgic_irq {int group; int irq_lock; } ;
struct kvm_vcpu {int kvm; } ;
typedef int gpa_t ;


 unsigned long BIT (int) ;
 scalar_t__ VGIC_ADDR_TO_INTID (int ,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 struct vgic_irq* vgic_get_irq (int ,struct kvm_vcpu*,scalar_t__) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;
 int vgic_queue_irq_unlock (int ,struct vgic_irq*,unsigned long) ;

void vgic_mmio_write_group(struct kvm_vcpu *vcpu, gpa_t addr,
      unsigned int len, unsigned long val)
{
 u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
 int i;
 unsigned long flags;

 for (i = 0; i < len * 8; i++) {
  struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);

  raw_spin_lock_irqsave(&irq->irq_lock, flags);
  irq->group = !!(val & BIT(i));
  vgic_queue_irq_unlock(vcpu->kvm, irq, flags);

  vgic_put_irq(vcpu->kvm, irq);
 }
}
