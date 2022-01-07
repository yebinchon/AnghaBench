
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {unsigned long mpidr; int irq_lock; int target_vcpu; } ;
struct kvm_vcpu {int kvm; } ;
typedef int gpa_t ;


 unsigned long GENMASK (int,int ) ;
 int VGIC_ADDR_TO_INTID (int,int) ;
 int kvm_mpidr_to_vcpu (int ,unsigned long) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct vgic_irq* vgic_get_irq (int ,int *,int) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;

__attribute__((used)) static void vgic_mmio_write_irouter(struct kvm_vcpu *vcpu,
        gpa_t addr, unsigned int len,
        unsigned long val)
{
 int intid = VGIC_ADDR_TO_INTID(addr, 64);
 struct vgic_irq *irq;
 unsigned long flags;


 if (addr & 4)
  return;

 irq = vgic_get_irq(vcpu->kvm, ((void*)0), intid);

 if (!irq)
  return;

 raw_spin_lock_irqsave(&irq->irq_lock, flags);


 irq->mpidr = val & GENMASK(23, 0);
 irq->target_vcpu = kvm_mpidr_to_vcpu(vcpu->kvm, irq->mpidr);

 raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
 vgic_put_irq(vcpu->kvm, irq);
}
