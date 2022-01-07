
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_its {int its_lock; struct vgic_its* private; struct kvm* kvm; } ;
struct kvm_device {int its_lock; struct kvm_device* private; struct kvm* kvm; } ;
struct kvm {int dummy; } ;


 int kfree (struct vgic_its*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vgic_its_free_collection_list (struct kvm*,struct vgic_its*) ;
 int vgic_its_free_device_list (struct kvm*,struct vgic_its*) ;

__attribute__((used)) static void vgic_its_destroy(struct kvm_device *kvm_dev)
{
 struct kvm *kvm = kvm_dev->kvm;
 struct vgic_its *its = kvm_dev->private;

 mutex_lock(&its->its_lock);

 vgic_its_free_device_list(kvm, its);
 vgic_its_free_collection_list(kvm, its);

 mutex_unlock(&its->its_lock);
 kfree(its);
 kfree(kvm_dev);
}
