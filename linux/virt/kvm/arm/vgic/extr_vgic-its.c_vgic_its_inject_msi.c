
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_its {int its_lock; } ;
struct kvm_msi {int data; int devid; } ;
struct kvm {int dummy; } ;


 scalar_t__ IS_ERR (struct vgic_its*) ;
 int PTR_ERR (struct vgic_its*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vgic_its_inject_cached_translation (struct kvm*,struct kvm_msi*) ;
 int vgic_its_trigger_msi (struct kvm*,struct vgic_its*,int ,int ) ;
 struct vgic_its* vgic_msi_to_its (struct kvm*,struct kvm_msi*) ;

int vgic_its_inject_msi(struct kvm *kvm, struct kvm_msi *msi)
{
 struct vgic_its *its;
 int ret;

 if (!vgic_its_inject_cached_translation(kvm, msi))
  return 1;

 its = vgic_msi_to_its(kvm, msi);
 if (IS_ERR(its))
  return PTR_ERR(its);

 mutex_lock(&its->its_lock);
 ret = vgic_its_trigger_msi(kvm, its, msi->devid, msi->data);
 mutex_unlock(&its->its_lock);

 if (ret < 0)
  return ret;






 if (ret)
  return 0;
 else
  return 1;
}
