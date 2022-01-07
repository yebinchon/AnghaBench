
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int u64 ;
typedef int u32 ;
struct vgic_irq {int line_level; int irq_lock; } ;
struct kvm_vcpu {TYPE_3__* kvm; } ;
struct TYPE_6__ {int nr_spis; } ;
struct TYPE_7__ {TYPE_1__ vgic; } ;
struct TYPE_8__ {TYPE_2__ arch; } ;


 int VGIC_NR_PRIVATE_IRQS ;
 int VGIC_NR_SGIS ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct vgic_irq* vgic_get_irq (TYPE_3__*,struct kvm_vcpu*,int) ;
 int vgic_put_irq (TYPE_3__*,struct vgic_irq*) ;
 int vgic_queue_irq_unlock (TYPE_3__*,struct vgic_irq*,unsigned long) ;

void vgic_write_irq_line_level_info(struct kvm_vcpu *vcpu, u32 intid,
        const u64 val)
{
 int i;
 int nr_irqs = vcpu->kvm->arch.vgic.nr_spis + VGIC_NR_PRIVATE_IRQS;
 unsigned long flags;

 for (i = 0; i < 32; i++) {
  struct vgic_irq *irq;
  bool new_level;

  if ((intid + i) < VGIC_NR_SGIS || (intid + i) >= nr_irqs)
   continue;

  irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);






  new_level = !!(val & (1U << i));
  raw_spin_lock_irqsave(&irq->irq_lock, flags);
  irq->line_level = new_level;
  if (new_level)
   vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
  else
   raw_spin_unlock_irqrestore(&irq->irq_lock, flags);

  vgic_put_irq(vcpu->kvm, irq);
 }
}
