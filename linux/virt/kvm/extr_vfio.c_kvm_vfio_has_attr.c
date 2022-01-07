
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int group; int attr; } ;
struct kvm_device {int dummy; } ;


 int ENXIO ;





__attribute__((used)) static int kvm_vfio_has_attr(struct kvm_device *dev,
        struct kvm_device_attr *attr)
{
 switch (attr->group) {
 case 131:
  switch (attr->attr) {
  case 130:
  case 129:



   return 0;
  }

  break;
 }

 return -ENXIO;
}
