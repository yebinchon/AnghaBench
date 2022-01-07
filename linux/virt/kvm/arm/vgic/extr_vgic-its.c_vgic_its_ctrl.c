
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vgic_its_abi {int (* save_tables ) (struct vgic_its*) ;int (* restore_tables ) (struct vgic_its*) ;} ;
struct vgic_its {int its_lock; } ;
struct kvm {int lock; } ;


 int EBUSY ;



 int KVM_DEV_ARM_VGIC_CTRL_INIT ;
 int lock_all_vcpus (struct kvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct vgic_its*) ;
 int stub2 (struct vgic_its*) ;
 int unlock_all_vcpus (struct kvm*) ;
 struct vgic_its_abi* vgic_its_get_abi (struct vgic_its*) ;
 int vgic_its_reset (struct kvm*,struct vgic_its*) ;

__attribute__((used)) static int vgic_its_ctrl(struct kvm *kvm, struct vgic_its *its, u64 attr)
{
 const struct vgic_its_abi *abi = vgic_its_get_abi(its);
 int ret = 0;

 if (attr == KVM_DEV_ARM_VGIC_CTRL_INIT)
  return 0;

 mutex_lock(&kvm->lock);
 mutex_lock(&its->its_lock);

 if (!lock_all_vcpus(kvm)) {
  mutex_unlock(&its->its_lock);
  mutex_unlock(&kvm->lock);
  return -EBUSY;
 }

 switch (attr) {
 case 130:
  vgic_its_reset(kvm, its);
  break;
 case 128:
  ret = abi->save_tables(its);
  break;
 case 129:
  ret = abi->restore_tables(its);
  break;
 }

 unlock_all_vcpus(kvm);
 mutex_unlock(&its->its_lock);
 mutex_unlock(&kvm->lock);
 return ret;
}
