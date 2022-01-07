
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vgic_irq {int pending_latch; int irq_lock; } ;
struct kvm_vcpu {int kvm; } ;
typedef int gpa_t ;


 scalar_t__ VGIC_ADDR_TO_INTID (int ,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 struct vgic_irq* vgic_get_irq (int ,struct kvm_vcpu*,scalar_t__) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;
 int vgic_queue_irq_unlock (int ,struct vgic_irq*,unsigned long) ;

__attribute__((used)) static int vgic_v3_uaccess_write_pending(struct kvm_vcpu *vcpu,
      gpa_t addr, unsigned int len,
      unsigned long val)
{
 u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
 int i;
 unsigned long flags;

 for (i = 0; i < len * 8; i++) {
  struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);

  raw_spin_lock_irqsave(&irq->irq_lock, flags);
  if (test_bit(i, &val)) {





   irq->pending_latch = 1;
   vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
  } else {
   irq->pending_latch = 0;
   raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
  }

  vgic_put_irq(vcpu->kvm, irq);
 }

 return 0;
}
