
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int group; int attr; } ;
struct kvm_device {int dummy; } ;


 int ENXIO ;
 int KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK ;
 int KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT ;




 int VGIC_LEVEL_INFO_LINE_LEVEL ;
 int vgic_v3_has_attr_regs (struct kvm_device*,struct kvm_device_attr*) ;

__attribute__((used)) static int vgic_v3_has_attr(struct kvm_device *dev,
       struct kvm_device_attr *attr)
{
 switch (attr->group) {
 case 138:
  switch (attr->attr) {
  case 130:
  case 129:
  case 128:
   return 0;
  }
  break;
 case 135:
 case 132:
 case 137:
  return vgic_v3_has_attr_regs(dev, attr);
 case 133:
  return 0;
 case 134: {
  if (((attr->attr & KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK) >>
        KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT) ==
        VGIC_LEVEL_INFO_LINE_LEVEL)
   return 0;
  break;
 }
 case 136:
  switch (attr->attr) {
  case 139:
   return 0;
  case 131:
   return 0;
  }
 }
 return -ENXIO;
}
