
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vgic_irq {unsigned long source; int pending_latch; int irq_lock; } ;
struct kvm_vcpu {int kvm; } ;
typedef int gpa_t ;


 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct vgic_irq* vgic_get_irq (int ,struct kvm_vcpu*,int) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;
 int vgic_queue_irq_unlock (int ,struct vgic_irq*,unsigned long) ;

__attribute__((used)) static void vgic_mmio_write_sgipends(struct kvm_vcpu *vcpu,
         gpa_t addr, unsigned int len,
         unsigned long val)
{
 u32 intid = addr & 0x0f;
 int i;
 unsigned long flags;

 for (i = 0; i < len; i++) {
  struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);

  raw_spin_lock_irqsave(&irq->irq_lock, flags);

  irq->source |= (val >> (i * 8)) & 0xff;

  if (irq->source) {
   irq->pending_latch = 1;
   vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
  } else {
   raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
  }
  vgic_put_irq(vcpu->kvm, irq);
 }
}
