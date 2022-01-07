
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vgic_irq {int irq_lock; int config; } ;
struct kvm_vcpu {int kvm; } ;
typedef int gpa_t ;


 scalar_t__ VGIC_ADDR_TO_INTID (int ,int) ;
 int VGIC_CONFIG_EDGE ;
 int VGIC_CONFIG_LEVEL ;
 scalar_t__ VGIC_NR_PRIVATE_IRQS ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 struct vgic_irq* vgic_get_irq (int ,struct kvm_vcpu*,scalar_t__) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;

void vgic_mmio_write_config(struct kvm_vcpu *vcpu,
       gpa_t addr, unsigned int len,
       unsigned long val)
{
 u32 intid = VGIC_ADDR_TO_INTID(addr, 2);
 int i;
 unsigned long flags;

 for (i = 0; i < len * 4; i++) {
  struct vgic_irq *irq;







  if (intid + i < VGIC_NR_PRIVATE_IRQS)
   continue;

  irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
  raw_spin_lock_irqsave(&irq->irq_lock, flags);

  if (test_bit(i * 2 + 1, &val))
   irq->config = VGIC_CONFIG_EDGE;
  else
   irq->config = VGIC_CONFIG_LEVEL;

  raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
  vgic_put_irq(vcpu->kvm, irq);
 }
}
