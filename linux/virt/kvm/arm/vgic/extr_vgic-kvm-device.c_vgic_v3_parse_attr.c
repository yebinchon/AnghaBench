
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_reg_attr {int addr; int vcpu; } ;
struct kvm_device_attr {scalar_t__ group; unsigned long attr; } ;
struct kvm_device {int kvm; } ;


 int EINVAL ;
 scalar_t__ KVM_DEV_ARM_VGIC_GRP_DIST_REGS ;
 int KVM_DEV_ARM_VGIC_OFFSET_MASK ;
 unsigned long KVM_DEV_ARM_VGIC_V3_MPIDR_MASK ;
 unsigned long KVM_DEV_ARM_VGIC_V3_MPIDR_SHIFT ;
 unsigned long VGIC_TO_MPIDR (unsigned long) ;
 int kvm_get_vcpu (int ,int ) ;
 int kvm_mpidr_to_vcpu (int ,unsigned long) ;

int vgic_v3_parse_attr(struct kvm_device *dev, struct kvm_device_attr *attr,
         struct vgic_reg_attr *reg_attr)
{
 unsigned long vgic_mpidr, mpidr_reg;





 if (attr->group != KVM_DEV_ARM_VGIC_GRP_DIST_REGS) {
  vgic_mpidr = (attr->attr & KVM_DEV_ARM_VGIC_V3_MPIDR_MASK) >>
         KVM_DEV_ARM_VGIC_V3_MPIDR_SHIFT;

  mpidr_reg = VGIC_TO_MPIDR(vgic_mpidr);
  reg_attr->vcpu = kvm_mpidr_to_vcpu(dev->kvm, mpidr_reg);
 } else {
  reg_attr->vcpu = kvm_get_vcpu(dev->kvm, 0);
 }

 if (!reg_attr->vcpu)
  return -EINVAL;

 reg_attr->addr = attr->attr & KVM_DEV_ARM_VGIC_OFFSET_MASK;

 return 0;
}
