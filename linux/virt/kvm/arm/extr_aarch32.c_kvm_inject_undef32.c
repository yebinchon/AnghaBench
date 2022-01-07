
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int PSR_AA32_MODE_UND ;
 int prepare_fault32 (struct kvm_vcpu*,int ,int) ;

void kvm_inject_undef32(struct kvm_vcpu *vcpu)
{
 prepare_fault32(vcpu, PSR_AA32_MODE_UND, 4);
}
