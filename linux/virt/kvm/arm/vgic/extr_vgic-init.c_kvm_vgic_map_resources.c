
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_dist {scalar_t__ vgic_model; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {int lock; TYPE_1__ arch; } ;


 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V2 ;
 int __kvm_vgic_destroy (struct kvm*) ;
 int irqchip_in_kernel (struct kvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vgic_v2_map_resources (struct kvm*) ;
 int vgic_v3_map_resources (struct kvm*) ;

int kvm_vgic_map_resources(struct kvm *kvm)
{
 struct vgic_dist *dist = &kvm->arch.vgic;
 int ret = 0;

 mutex_lock(&kvm->lock);
 if (!irqchip_in_kernel(kvm))
  goto out;

 if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V2)
  ret = vgic_v2_map_resources(kvm);
 else
  ret = vgic_v3_map_resources(kvm);

 if (ret)
  __kvm_vgic_destroy(kvm);

out:
 mutex_unlock(&kvm->lock);
 return ret;
}
