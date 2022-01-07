
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int group; int attr; } ;
struct kvm_device {int dummy; } ;


 int ENXIO ;
 int vgic_v2_has_attr_regs (struct kvm_device*,struct kvm_device_attr*) ;

__attribute__((used)) static int vgic_v2_has_attr(struct kvm_device *dev,
       struct kvm_device_attr *attr)
{
 switch (attr->group) {
 case 134:
  switch (attr->attr) {
  case 128:
  case 129:
   return 0;
  }
  break;
 case 131:
 case 133:
  return vgic_v2_has_attr_regs(dev, attr);
 case 130:
  return 0;
 case 132:
  switch (attr->attr) {
  case 135:
   return 0;
  }
 }
 return -ENXIO;
}
