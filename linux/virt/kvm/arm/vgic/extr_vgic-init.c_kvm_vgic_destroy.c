
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int lock; } ;


 int __kvm_vgic_destroy (struct kvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kvm_vgic_destroy(struct kvm *kvm)
{
 mutex_lock(&kvm->lock);
 __kvm_vgic_destroy(kvm);
 mutex_unlock(&kvm->lock);
}
