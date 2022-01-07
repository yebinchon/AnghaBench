
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vgic_dist {int nr_spis; int implementation_rev; int enabled; } ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
typedef int gpa_t ;
struct TYPE_3__ {struct vgic_dist vgic; } ;
struct TYPE_4__ {int online_vcpus; TYPE_1__ arch; } ;


 int GICD_ENABLE ;
 int GICD_IIDR_IMPLEMENTER_SHIFT ;
 int GICD_IIDR_PRODUCT_ID_SHIFT ;
 int GICD_IIDR_REVISION_SHIFT ;



 int IMPLEMENTER_ARM ;
 int PRODUCT_ID_KVM ;
 int VGIC_NR_PRIVATE_IRQS ;
 int atomic_read (int *) ;

__attribute__((used)) static unsigned long vgic_mmio_read_v2_misc(struct kvm_vcpu *vcpu,
         gpa_t addr, unsigned int len)
{
 struct vgic_dist *vgic = &vcpu->kvm->arch.vgic;
 u32 value;

 switch (addr & 0x0c) {
 case 129:
  value = vgic->enabled ? GICD_ENABLE : 0;
  break;
 case 130:
  value = vgic->nr_spis + VGIC_NR_PRIVATE_IRQS;
  value = (value >> 5) - 1;
  value |= (atomic_read(&vcpu->kvm->online_vcpus) - 1) << 5;
  break;
 case 128:
  value = (PRODUCT_ID_KVM << GICD_IIDR_PRODUCT_ID_SHIFT) |
   (vgic->implementation_rev << GICD_IIDR_REVISION_SHIFT) |
   (IMPLEMENTER_ARM << GICD_IIDR_IMPLEMENTER_SHIFT);
  break;
 default:
  return 0;
 }

 return value;
}
