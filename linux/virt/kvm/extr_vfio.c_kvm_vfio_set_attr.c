
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int group; int addr; int attr; } ;
struct kvm_device {int dummy; } ;


 int ENXIO ;

 int kvm_vfio_set_group (struct kvm_device*,int ,int ) ;

__attribute__((used)) static int kvm_vfio_set_attr(struct kvm_device *dev,
        struct kvm_device_attr *attr)
{
 switch (attr->group) {
 case 128:
  return kvm_vfio_set_group(dev, attr->attr, attr->addr);
 }

 return -ENXIO;
}
