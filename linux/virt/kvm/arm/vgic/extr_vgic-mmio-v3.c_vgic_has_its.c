
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_dist {scalar_t__ vgic_model; int has_its; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {TYPE_1__ arch; } ;


 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V3 ;

bool vgic_has_its(struct kvm *kvm)
{
 struct vgic_dist *dist = &kvm->arch.vgic;

 if (dist->vgic_model != KVM_DEV_TYPE_ARM_VGIC_V3)
  return 0;

 return dist->has_its;
}
