
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int group; int attr; } ;
struct kvm_device {int dummy; } ;


 int ENXIO ;
 int vgic_its_has_attr_regs (struct kvm_device*,struct kvm_device_attr*) ;

__attribute__((used)) static int vgic_its_has_attr(struct kvm_device *dev,
        struct kvm_device_attr *attr)
{
 switch (attr->group) {
 case 131:
  switch (attr->attr) {
  case 128:
   return 0;
  }
  break;
 case 130:
  switch (attr->attr) {
  case 132:
   return 0;
  case 135:
   return 0;
  case 133:
   return 0;
  case 134:
   return 0;
  }
  break;
 case 129:
  return vgic_its_has_attr_regs(dev, attr);
 }
 return -ENXIO;
}
