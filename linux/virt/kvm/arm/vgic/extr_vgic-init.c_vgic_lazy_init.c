
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vgic_model; } ;
struct TYPE_4__ {TYPE_1__ vgic; } ;
struct kvm {int lock; TYPE_2__ arch; } ;


 int EBUSY ;
 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V2 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vgic_init (struct kvm*) ;
 int vgic_initialized (struct kvm*) ;

int vgic_lazy_init(struct kvm *kvm)
{
 int ret = 0;

 if (unlikely(!vgic_initialized(kvm))) {






  if (kvm->arch.vgic.vgic_model != KVM_DEV_TYPE_ARM_VGIC_V2)
   return -EBUSY;

  mutex_lock(&kvm->lock);
  ret = vgic_init(kvm);
  mutex_unlock(&kvm->lock);
 }

 return ret;
}
