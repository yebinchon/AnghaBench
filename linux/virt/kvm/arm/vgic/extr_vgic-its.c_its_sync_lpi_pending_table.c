
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8 ;
typedef int u32 ;
struct vgic_irq {unsigned int pending_latch; int irq_lock; } ;
struct TYPE_3__ {int pendbaser; } ;
struct TYPE_4__ {TYPE_1__ vgic_cpu; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;
typedef scalar_t__ gpa_t ;


 int BITS_PER_BYTE ;
 scalar_t__ GICR_PENDBASER_ADDRESS (int ) ;
 int kfree (int*) ;
 int kvm_read_guest_lock (int ,scalar_t__,unsigned int*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int vgic_copy_lpi_list (int ,struct kvm_vcpu*,int**) ;
 struct vgic_irq* vgic_get_irq (int ,int *,int) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;
 int vgic_queue_irq_unlock (int ,struct vgic_irq*,unsigned long) ;

__attribute__((used)) static int its_sync_lpi_pending_table(struct kvm_vcpu *vcpu)
{
 gpa_t pendbase = GICR_PENDBASER_ADDRESS(vcpu->arch.vgic_cpu.pendbaser);
 struct vgic_irq *irq;
 int last_byte_offset = -1;
 int ret = 0;
 u32 *intids;
 int nr_irqs, i;
 unsigned long flags;
 u8 pendmask;

 nr_irqs = vgic_copy_lpi_list(vcpu->kvm, vcpu, &intids);
 if (nr_irqs < 0)
  return nr_irqs;

 for (i = 0; i < nr_irqs; i++) {
  int byte_offset, bit_nr;

  byte_offset = intids[i] / BITS_PER_BYTE;
  bit_nr = intids[i] % BITS_PER_BYTE;





  if (byte_offset != last_byte_offset) {
   ret = kvm_read_guest_lock(vcpu->kvm,
        pendbase + byte_offset,
        &pendmask, 1);
   if (ret) {
    kfree(intids);
    return ret;
   }
   last_byte_offset = byte_offset;
  }

  irq = vgic_get_irq(vcpu->kvm, ((void*)0), intids[i]);
  raw_spin_lock_irqsave(&irq->irq_lock, flags);
  irq->pending_latch = pendmask & (1U << bit_nr);
  vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
  vgic_put_irq(vcpu->kvm, irq);
 }

 kfree(intids);

 return ret;
}
