
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long vcpu_get_reg (struct kvm_vcpu*,int) ;

__attribute__((used)) static unsigned long smccc_get_arg1(struct kvm_vcpu *vcpu)
{
 return vcpu_get_reg(vcpu, 1);
}
