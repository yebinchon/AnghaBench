
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {scalar_t__ config; int line_level; int pending_latch; int irq_lock; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 scalar_t__ VGIC_CONFIG_LEVEL ;
 unsigned int VGIC_NR_PRIVATE_IRQS ;
 struct kvm_vcpu* kvm_get_vcpu (struct kvm*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_vgic_update_irq_pending (int,unsigned int,int) ;
 struct vgic_irq* vgic_get_irq (struct kvm*,struct kvm_vcpu*,unsigned int) ;
 int vgic_lazy_init (struct kvm*) ;
 int vgic_put_irq (struct kvm*,struct vgic_irq*) ;
 int vgic_queue_irq_unlock (struct kvm*,struct vgic_irq*,unsigned long) ;
 int vgic_validate_injection (struct vgic_irq*,int,void*) ;

int kvm_vgic_inject_irq(struct kvm *kvm, int cpuid, unsigned int intid,
   bool level, void *owner)
{
 struct kvm_vcpu *vcpu;
 struct vgic_irq *irq;
 unsigned long flags;
 int ret;

 trace_vgic_update_irq_pending(cpuid, intid, level);

 ret = vgic_lazy_init(kvm);
 if (ret)
  return ret;

 vcpu = kvm_get_vcpu(kvm, cpuid);
 if (!vcpu && intid < VGIC_NR_PRIVATE_IRQS)
  return -EINVAL;

 irq = vgic_get_irq(kvm, vcpu, intid);
 if (!irq)
  return -EINVAL;

 raw_spin_lock_irqsave(&irq->irq_lock, flags);

 if (!vgic_validate_injection(irq, level, owner)) {

  raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
  vgic_put_irq(kvm, irq);
  return 0;
 }

 if (irq->config == VGIC_CONFIG_LEVEL)
  irq->line_level = level;
 else
  irq->pending_latch = 1;

 vgic_queue_irq_unlock(kvm, irq, flags);
 vgic_put_irq(kvm, irq);

 return 0;
}
