
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long u8 ;
typedef scalar_t__ u32 ;
struct vgic_irq {unsigned long targets; int irq_lock; int target_vcpu; } ;
struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef int gpa_t ;
struct TYPE_4__ {int online_vcpus; } ;


 unsigned long GENMASK (scalar_t__,int ) ;
 scalar_t__ VGIC_ADDR_TO_INTID (int ,int) ;
 scalar_t__ VGIC_NR_PRIVATE_IRQS ;
 int __ffs (long) ;
 scalar_t__ atomic_read (int *) ;
 int kvm_get_vcpu (TYPE_1__*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct vgic_irq* vgic_get_irq (TYPE_1__*,int *,scalar_t__) ;
 int vgic_put_irq (TYPE_1__*,struct vgic_irq*) ;

__attribute__((used)) static void vgic_mmio_write_target(struct kvm_vcpu *vcpu,
       gpa_t addr, unsigned int len,
       unsigned long val)
{
 u32 intid = VGIC_ADDR_TO_INTID(addr, 8);
 u8 cpu_mask = GENMASK(atomic_read(&vcpu->kvm->online_vcpus) - 1, 0);
 int i;
 unsigned long flags;


 if (intid < VGIC_NR_PRIVATE_IRQS)
  return;

 for (i = 0; i < len; i++) {
  struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, ((void*)0), intid + i);
  int target;

  raw_spin_lock_irqsave(&irq->irq_lock, flags);

  irq->targets = (val >> (i * 8)) & cpu_mask;
  target = irq->targets ? __ffs(irq->targets) : 0;
  irq->target_vcpu = kvm_get_vcpu(vcpu->kvm, target);

  raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
  vgic_put_irq(vcpu->kvm, irq);
 }
}
