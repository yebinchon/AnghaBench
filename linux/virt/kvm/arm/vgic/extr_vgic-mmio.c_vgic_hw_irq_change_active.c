
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {int active; } ;
struct kvm_vcpu {int dummy; } ;


 int vgic_irq_set_phys_active (struct vgic_irq*,int) ;

__attribute__((used)) static void vgic_hw_irq_change_active(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
          bool active, bool is_uaccess)
{
 if (is_uaccess)
  return;

 irq->active = active;
 vgic_irq_set_phys_active(irq, active);
}
