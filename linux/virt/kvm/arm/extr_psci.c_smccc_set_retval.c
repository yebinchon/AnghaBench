
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int vcpu_set_reg (struct kvm_vcpu*,int,unsigned long) ;

__attribute__((used)) static void smccc_set_retval(struct kvm_vcpu *vcpu,
        unsigned long a0,
        unsigned long a1,
        unsigned long a2,
        unsigned long a3)
{
 vcpu_set_reg(vcpu, 0, a0);
 vcpu_set_reg(vcpu, 1, a1);
 vcpu_set_reg(vcpu, 2, a2);
 vcpu_set_reg(vcpu, 3, a3);
}
