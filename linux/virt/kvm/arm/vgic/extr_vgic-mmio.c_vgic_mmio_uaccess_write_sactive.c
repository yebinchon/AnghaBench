
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int __vgic_mmio_write_sactive (struct kvm_vcpu*,int ,unsigned int,unsigned long) ;

int vgic_mmio_uaccess_write_sactive(struct kvm_vcpu *vcpu,
         gpa_t addr, unsigned int len,
         unsigned long val)
{
 __vgic_mmio_write_sactive(vcpu, addr, len, val);
 return 0;
}
