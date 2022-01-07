
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct vgic_irq {int intid; int pending_latch; int irq_lock; struct kvm_vcpu* target_vcpu; } ;
struct TYPE_3__ {int pendbaser; } ;
struct TYPE_4__ {TYPE_1__ vgic_cpu; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;
struct kvm {int dummy; } ;
typedef scalar_t__ gpa_t ;


 int BITS_PER_BYTE ;
 scalar_t__ GICR_PENDBASER_ADDRESS (int ) ;
 int kvm_read_guest_lock (struct kvm*,scalar_t__,int*,int) ;
 int kvm_write_guest_lock (struct kvm*,scalar_t__,int*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int vgic_queue_irq_unlock (int ,struct vgic_irq*,unsigned long) ;

int vgic_v3_lpi_sync_pending_status(struct kvm *kvm, struct vgic_irq *irq)
{
 struct kvm_vcpu *vcpu;
 int byte_offset, bit_nr;
 gpa_t pendbase, ptr;
 bool status;
 u8 val;
 int ret;
 unsigned long flags;

retry:
 vcpu = irq->target_vcpu;
 if (!vcpu)
  return 0;

 pendbase = GICR_PENDBASER_ADDRESS(vcpu->arch.vgic_cpu.pendbaser);

 byte_offset = irq->intid / BITS_PER_BYTE;
 bit_nr = irq->intid % BITS_PER_BYTE;
 ptr = pendbase + byte_offset;

 ret = kvm_read_guest_lock(kvm, ptr, &val, 1);
 if (ret)
  return ret;

 status = val & (1 << bit_nr);

 raw_spin_lock_irqsave(&irq->irq_lock, flags);
 if (irq->target_vcpu != vcpu) {
  raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
  goto retry;
 }
 irq->pending_latch = status;
 vgic_queue_irq_unlock(vcpu->kvm, irq, flags);

 if (status) {

  val &= ~(1 << bit_nr);
  ret = kvm_write_guest_lock(kvm, ptr, &val, 1);
  if (ret)
   return ret;
 }
 return 0;
}
