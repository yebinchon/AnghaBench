
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vgic_reg_attr {int addr; struct kvm_vcpu* vcpu; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_device_attr {int group; int attr; } ;
struct kvm_device {TYPE_1__* kvm; } ;
typedef int gpa_t ;
struct TYPE_4__ {int lock; } ;


 int EBUSY ;
 int EINVAL ;




 unsigned int KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK ;
 unsigned int KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT ;
 unsigned int KVM_DEV_ARM_VGIC_LINE_LEVEL_INTID_MASK ;
 int KVM_DEV_ARM_VGIC_SYSREG_INSTR_MASK ;
 unsigned int VGIC_LEVEL_INFO_LINE_LEVEL ;
 int lock_all_vcpus (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int unlock_all_vcpus (TYPE_1__*) ;
 int vgic_initialized (TYPE_1__*) ;
 int vgic_v3_cpu_sysregs_uaccess (struct kvm_vcpu*,int,int,int*) ;
 int vgic_v3_dist_uaccess (struct kvm_vcpu*,int,int ,int*) ;
 int vgic_v3_line_level_info_uaccess (struct kvm_vcpu*,int,unsigned int,int*) ;
 int vgic_v3_parse_attr (struct kvm_device*,struct kvm_device_attr*,struct vgic_reg_attr*) ;
 int vgic_v3_redist_uaccess (struct kvm_vcpu*,int,int ,int*) ;

__attribute__((used)) static int vgic_v3_attr_regs_access(struct kvm_device *dev,
        struct kvm_device_attr *attr,
        u64 *reg, bool is_write)
{
 struct vgic_reg_attr reg_attr;
 gpa_t addr;
 struct kvm_vcpu *vcpu;
 int ret;
 u32 tmp32;

 ret = vgic_v3_parse_attr(dev, attr, &reg_attr);
 if (ret)
  return ret;

 vcpu = reg_attr.vcpu;
 addr = reg_attr.addr;

 mutex_lock(&dev->kvm->lock);

 if (unlikely(!vgic_initialized(dev->kvm))) {
  ret = -EBUSY;
  goto out;
 }

 if (!lock_all_vcpus(dev->kvm)) {
  ret = -EBUSY;
  goto out;
 }

 switch (attr->group) {
 case 130:
  if (is_write)
   tmp32 = *reg;

  ret = vgic_v3_dist_uaccess(vcpu, is_write, addr, &tmp32);
  if (!is_write)
   *reg = tmp32;
  break;
 case 128:
  if (is_write)
   tmp32 = *reg;

  ret = vgic_v3_redist_uaccess(vcpu, is_write, addr, &tmp32);
  if (!is_write)
   *reg = tmp32;
  break;
 case 131: {
  u64 regid;

  regid = (attr->attr & KVM_DEV_ARM_VGIC_SYSREG_INSTR_MASK);
  ret = vgic_v3_cpu_sysregs_uaccess(vcpu, is_write,
        regid, reg);
  break;
 }
 case 129: {
  unsigned int info, intid;

  info = (attr->attr & KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK) >>
   KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT;
  if (info == VGIC_LEVEL_INFO_LINE_LEVEL) {
   intid = attr->attr &
    KVM_DEV_ARM_VGIC_LINE_LEVEL_INTID_MASK;
   ret = vgic_v3_line_level_info_uaccess(vcpu, is_write,
             intid, reg);
  } else {
   ret = -EINVAL;
  }
  break;
 }
 default:
  ret = -EINVAL;
  break;
 }

 unlock_all_vcpus(dev->kvm);
out:
 mutex_unlock(&dev->kvm->lock);
 return ret;
}
