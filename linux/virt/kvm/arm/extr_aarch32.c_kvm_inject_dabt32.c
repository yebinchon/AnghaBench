
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int inject_abt32 (struct kvm_vcpu*,int,unsigned long) ;

void kvm_inject_dabt32(struct kvm_vcpu *vcpu, unsigned long addr)
{
 inject_abt32(vcpu, 0, addr);
}
