
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vgic_irq {int host_irq; scalar_t__ hw; int irq_lock; struct kvm_vcpu* target_vcpu; } ;
struct TYPE_4__ {int its_vpe; } ;
struct TYPE_5__ {TYPE_1__ vgic_v3; } ;
struct TYPE_6__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct its_vlpi_map {int * vpe; } ;


 int its_get_vlpi (int ,struct its_vlpi_map*) ;
 int its_map_vlpi (int ,struct its_vlpi_map*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int update_affinity(struct vgic_irq *irq, struct kvm_vcpu *vcpu)
{
 int ret = 0;
 unsigned long flags;

 raw_spin_lock_irqsave(&irq->irq_lock, flags);
 irq->target_vcpu = vcpu;
 raw_spin_unlock_irqrestore(&irq->irq_lock, flags);

 if (irq->hw) {
  struct its_vlpi_map map;

  ret = its_get_vlpi(irq->host_irq, &map);
  if (ret)
   return ret;

  map.vpe = &vcpu->arch.vgic_cpu.vgic_v3.its_vpe;

  ret = its_map_vlpi(irq->host_irq, &map);
 }

 return ret;
}
