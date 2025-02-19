
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct vgic_irq {scalar_t__ intid; scalar_t__ active_source; scalar_t__ config; int pending_latch; int source; int line_level; scalar_t__ priority; scalar_t__ group; scalar_t__ active; scalar_t__ hwintid; scalar_t__ hw; } ;
struct TYPE_10__ {scalar_t__* vgic_lr; } ;
struct TYPE_11__ {TYPE_4__ vgic_v3; } ;
struct TYPE_12__ {TYPE_5__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_6__ arch; TYPE_3__* kvm; } ;
struct TYPE_7__ {scalar_t__ vgic_model; } ;
struct TYPE_8__ {TYPE_1__ vgic; } ;
struct TYPE_9__ {TYPE_2__ arch; } ;


 scalar_t__ GICH_LR_PHYSID_CPUID_SHIFT ;
 scalar_t__ ICH_LR_ACTIVE_BIT ;
 scalar_t__ ICH_LR_EOI ;
 scalar_t__ ICH_LR_GROUP ;
 scalar_t__ ICH_LR_HW ;
 scalar_t__ ICH_LR_PENDING_BIT ;
 scalar_t__ ICH_LR_PHYS_ID_SHIFT ;
 scalar_t__ ICH_LR_PRIORITY_SHIFT ;
 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V2 ;
 scalar_t__ VGIC_CONFIG_EDGE ;
 scalar_t__ VGIC_CONFIG_LEVEL ;
 scalar_t__ WARN_RATELIMIT (int,char*,scalar_t__) ;
 scalar_t__ ffs (int) ;
 scalar_t__ irq_is_pending (struct vgic_irq*) ;
 scalar_t__ vgic_irq_is_mapped_level (struct vgic_irq*) ;
 scalar_t__ vgic_irq_is_multi_sgi (struct vgic_irq*) ;
 scalar_t__ vgic_irq_is_sgi (scalar_t__) ;

void vgic_v3_populate_lr(struct kvm_vcpu *vcpu, struct vgic_irq *irq, int lr)
{
 u32 model = vcpu->kvm->arch.vgic.vgic_model;
 u64 val = irq->intid;
 bool allow_pending = 1, is_v2_sgi;

 is_v2_sgi = (vgic_irq_is_sgi(irq->intid) &&
       model == KVM_DEV_TYPE_ARM_VGIC_V2);

 if (irq->active) {
  val |= ICH_LR_ACTIVE_BIT;
  if (is_v2_sgi)
   val |= irq->active_source << GICH_LR_PHYSID_CPUID_SHIFT;
  if (vgic_irq_is_multi_sgi(irq)) {
   allow_pending = 0;
   val |= ICH_LR_EOI;
  }
 }

 if (irq->hw) {
  val |= ICH_LR_HW;
  val |= ((u64)irq->hwintid) << ICH_LR_PHYS_ID_SHIFT;





  if (irq->active)
   allow_pending = 0;
 } else {
  if (irq->config == VGIC_CONFIG_LEVEL) {
   val |= ICH_LR_EOI;





   if (irq->active)
    allow_pending = 0;
  }
 }

 if (allow_pending && irq_is_pending(irq)) {
  val |= ICH_LR_PENDING_BIT;

  if (irq->config == VGIC_CONFIG_EDGE)
   irq->pending_latch = 0;

  if (vgic_irq_is_sgi(irq->intid) &&
      model == KVM_DEV_TYPE_ARM_VGIC_V2) {
   u32 src = ffs(irq->source);

   if (WARN_RATELIMIT(!src, "No SGI source for INTID %d\n",
        irq->intid))
    return;

   val |= (src - 1) << GICH_LR_PHYSID_CPUID_SHIFT;
   irq->source &= ~(1 << (src - 1));
   if (irq->source) {
    irq->pending_latch = 1;
    val |= ICH_LR_EOI;
   }
  }
 }







 if (vgic_irq_is_mapped_level(irq) && (val & ICH_LR_PENDING_BIT))
  irq->line_level = 0;

 if (irq->group)
  val |= ICH_LR_GROUP;

 val |= (u64)irq->priority << ICH_LR_PRIORITY_SHIFT;

 vcpu->arch.vgic_cpu.vgic_v3.vgic_lr[lr] = val;
}
