
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vgic_reg_attr {int addr; struct kvm_vcpu* vcpu; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_device_attr {int group; } ;
struct kvm_device {TYPE_1__* kvm; } ;
typedef int gpa_t ;
struct TYPE_4__ {int lock; } ;


 int EBUSY ;
 int EINVAL ;


 int lock_all_vcpus (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unlock_all_vcpus (TYPE_1__*) ;
 int vgic_init (TYPE_1__*) ;
 int vgic_v2_cpuif_uaccess (struct kvm_vcpu*,int,int ,int *) ;
 int vgic_v2_dist_uaccess (struct kvm_vcpu*,int,int ,int *) ;
 int vgic_v2_parse_attr (struct kvm_device*,struct kvm_device_attr*,struct vgic_reg_attr*) ;

__attribute__((used)) static int vgic_v2_attr_regs_access(struct kvm_device *dev,
        struct kvm_device_attr *attr,
        u32 *reg, bool is_write)
{
 struct vgic_reg_attr reg_attr;
 gpa_t addr;
 struct kvm_vcpu *vcpu;
 int ret;

 ret = vgic_v2_parse_attr(dev, attr, &reg_attr);
 if (ret)
  return ret;

 vcpu = reg_attr.vcpu;
 addr = reg_attr.addr;

 mutex_lock(&dev->kvm->lock);

 ret = vgic_init(dev->kvm);
 if (ret)
  goto out;

 if (!lock_all_vcpus(dev->kvm)) {
  ret = -EBUSY;
  goto out;
 }

 switch (attr->group) {
 case 129:
  ret = vgic_v2_cpuif_uaccess(vcpu, is_write, addr, reg);
  break;
 case 128:
  ret = vgic_v2_dist_uaccess(vcpu, is_write, addr, reg);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 unlock_all_vcpus(dev->kvm);
out:
 mutex_unlock(&dev->kvm->lock);
 return ret;
}
