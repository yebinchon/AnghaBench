
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_reg_attr {int addr; int vcpu; } ;
struct kvm_device_attr {int attr; } ;
struct kvm_device {TYPE_1__* kvm; } ;
struct TYPE_2__ {int online_vcpus; } ;


 int EINVAL ;
 int KVM_DEV_ARM_VGIC_CPUID_MASK ;
 int KVM_DEV_ARM_VGIC_CPUID_SHIFT ;
 int KVM_DEV_ARM_VGIC_OFFSET_MASK ;
 int atomic_read (int *) ;
 int kvm_get_vcpu (TYPE_1__*,int) ;

int vgic_v2_parse_attr(struct kvm_device *dev, struct kvm_device_attr *attr,
         struct vgic_reg_attr *reg_attr)
{
 int cpuid;

 cpuid = (attr->attr & KVM_DEV_ARM_VGIC_CPUID_MASK) >>
   KVM_DEV_ARM_VGIC_CPUID_SHIFT;

 if (cpuid >= atomic_read(&dev->kvm->online_vcpus))
  return -EINVAL;

 reg_attr->vcpu = kvm_get_vcpu(dev->kvm, cpuid);
 reg_attr->addr = attr->attr & KVM_DEV_ARM_VGIC_OFFSET_MASK;

 return 0;
}
