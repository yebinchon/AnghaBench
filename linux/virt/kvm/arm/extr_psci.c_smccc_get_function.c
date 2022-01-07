
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int vcpu_get_reg (struct kvm_vcpu*,int ) ;

__attribute__((used)) static u32 smccc_get_function(struct kvm_vcpu *vcpu)
{
 return vcpu_get_reg(vcpu, 0);
}
