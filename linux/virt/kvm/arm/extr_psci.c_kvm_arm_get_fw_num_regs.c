
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;



int kvm_arm_get_fw_num_regs(struct kvm_vcpu *vcpu)
{
 return 3;
}
