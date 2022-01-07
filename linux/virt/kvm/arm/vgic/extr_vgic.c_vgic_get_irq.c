
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct vgic_irq {int dummy; } ;
struct TYPE_8__ {struct vgic_irq* private_irqs; } ;
struct TYPE_7__ {TYPE_4__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_5__ {size_t nr_spis; struct vgic_irq* spis; } ;
struct TYPE_6__ {TYPE_1__ vgic; } ;
struct kvm {TYPE_2__ arch; } ;


 size_t VGIC_MAX_PRIVATE ;
 size_t VGIC_MIN_LPI ;
 size_t VGIC_NR_PRIVATE_IRQS ;
 int WARN (int,char*) ;
 size_t array_index_nospec (size_t,size_t) ;
 struct vgic_irq* vgic_get_lpi (struct kvm*,size_t) ;

struct vgic_irq *vgic_get_irq(struct kvm *kvm, struct kvm_vcpu *vcpu,
         u32 intid)
{

 if (intid <= VGIC_MAX_PRIVATE) {
  intid = array_index_nospec(intid, VGIC_MAX_PRIVATE + 1);
  return &vcpu->arch.vgic_cpu.private_irqs[intid];
 }


 if (intid < (kvm->arch.vgic.nr_spis + VGIC_NR_PRIVATE_IRQS)) {
  intid = array_index_nospec(intid, kvm->arch.vgic.nr_spis + VGIC_NR_PRIVATE_IRQS);
  return &kvm->arch.vgic.spis[intid - VGIC_NR_PRIVATE_IRQS];
 }


 if (intid >= VGIC_MIN_LPI)
  return vgic_get_lpi(kvm, intid);

 WARN(1, "Looking up struct vgic_irq for reserved INTID");
 return ((void*)0);
}
