
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_device_attr {int attr; } ;


 int ENXIO ;
 int KVM_ARM_VCPU_PMU_V3 ;


 int kvm_arm_support_pmu_v3 () ;
 int test_bit (int ,int ) ;

int kvm_arm_pmu_v3_has_attr(struct kvm_vcpu *vcpu, struct kvm_device_attr *attr)
{
 switch (attr->attr) {
 case 128:
 case 129:
  if (kvm_arm_support_pmu_v3() &&
      test_bit(KVM_ARM_VCPU_PMU_V3, vcpu->arch.features))
   return 0;
 }

 return -ENXIO;
}
