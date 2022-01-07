
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct vgic_v3_cpu_if {scalar_t__* vgic_lr; int vgic_hcr; } ;
struct vgic_irq {int active; scalar_t__ config; int pending_latch; int source; int irq_lock; int line_level; scalar_t__ active_source; } ;
struct vgic_cpu {int used_lrs; struct vgic_v3_cpu_if vgic_v3; } ;
struct TYPE_8__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_4__* kvm; TYPE_1__ arch; } ;
struct TYPE_9__ {scalar_t__ vgic_model; } ;
struct TYPE_10__ {TYPE_2__ vgic; } ;
struct TYPE_11__ {TYPE_3__ arch; } ;


 int DEBUG_SPINLOCK_BUG_ON (int) ;
 scalar_t__ GICH_LR_PHYSID_CPUID ;
 scalar_t__ GICH_LR_PHYSID_CPUID_SHIFT ;
 scalar_t__ GICH_LR_VIRTUALID ;
 int ICH_HCR_UIE ;
 scalar_t__ ICH_LR_ACTIVE_BIT ;
 scalar_t__ ICH_LR_PENDING_BIT ;
 scalar_t__ ICH_LR_STATE ;
 scalar_t__ ICH_LR_VIRTUAL_ID_MASK ;
 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V3 ;
 scalar_t__ VGIC_CONFIG_EDGE ;
 scalar_t__ VGIC_CONFIG_LEVEL ;
 scalar_t__ VGIC_NR_PRIVATE_IRQS ;
 int irqs_disabled () ;
 int kvm_notify_acked_irq (TYPE_4__*,int ,scalar_t__) ;
 scalar_t__ lr_signals_eoi_mi (scalar_t__) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 struct vgic_irq* vgic_get_irq (TYPE_4__*,struct kvm_vcpu*,scalar_t__) ;
 int vgic_get_phys_line_level (struct vgic_irq*) ;
 scalar_t__ vgic_irq_is_mapped_level (struct vgic_irq*) ;
 int vgic_irq_is_sgi (scalar_t__) ;
 int vgic_irq_set_phys_active (struct vgic_irq*,int) ;
 int vgic_put_irq (TYPE_4__*,struct vgic_irq*) ;
 scalar_t__ vgic_valid_spi (TYPE_4__*,scalar_t__) ;

void vgic_v3_fold_lr_state(struct kvm_vcpu *vcpu)
{
 struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
 struct vgic_v3_cpu_if *cpuif = &vgic_cpu->vgic_v3;
 u32 model = vcpu->kvm->arch.vgic.vgic_model;
 int lr;

 DEBUG_SPINLOCK_BUG_ON(!irqs_disabled());

 cpuif->vgic_hcr &= ~ICH_HCR_UIE;

 for (lr = 0; lr < vgic_cpu->used_lrs; lr++) {
  u64 val = cpuif->vgic_lr[lr];
  u32 intid, cpuid;
  struct vgic_irq *irq;
  bool is_v2_sgi = 0;

  cpuid = val & GICH_LR_PHYSID_CPUID;
  cpuid >>= GICH_LR_PHYSID_CPUID_SHIFT;

  if (model == KVM_DEV_TYPE_ARM_VGIC_V3) {
   intid = val & ICH_LR_VIRTUAL_ID_MASK;
  } else {
   intid = val & GICH_LR_VIRTUALID;
   is_v2_sgi = vgic_irq_is_sgi(intid);
  }


  if (lr_signals_eoi_mi(val) && vgic_valid_spi(vcpu->kvm, intid))
   kvm_notify_acked_irq(vcpu->kvm, 0,
          intid - VGIC_NR_PRIVATE_IRQS);

  irq = vgic_get_irq(vcpu->kvm, vcpu, intid);
  if (!irq)
   continue;

  raw_spin_lock(&irq->irq_lock);


  irq->active = !!(val & ICH_LR_ACTIVE_BIT);

  if (irq->active && is_v2_sgi)
   irq->active_source = cpuid;


  if (irq->config == VGIC_CONFIG_EDGE &&
      (val & ICH_LR_PENDING_BIT)) {
   irq->pending_latch = 1;

   if (is_v2_sgi)
    irq->source |= (1 << cpuid);
  }




  if (irq->config == VGIC_CONFIG_LEVEL && !(val & ICH_LR_STATE))
   irq->pending_latch = 0;
  if (vgic_irq_is_mapped_level(irq) && (val & ICH_LR_PENDING_BIT)) {
   irq->line_level = vgic_get_phys_line_level(irq);

   if (!irq->line_level)
    vgic_irq_set_phys_active(irq, 0);
  }

  raw_spin_unlock(&irq->irq_lock);
  vgic_put_irq(vcpu->kvm, irq);
 }

 vgic_cpu->used_lrs = 0;
}
