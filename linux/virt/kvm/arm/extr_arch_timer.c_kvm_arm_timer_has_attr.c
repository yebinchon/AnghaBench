
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_device_attr {int attr; } ;


 int ENXIO ;



int kvm_arm_timer_has_attr(struct kvm_vcpu *vcpu, struct kvm_device_attr *attr)
{
 switch (attr->attr) {
 case 128:
 case 129:
  return 0;
 }

 return -ENXIO;
}
