
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;



unsigned long vgic_mmio_read_rao(struct kvm_vcpu *vcpu,
     gpa_t addr, unsigned int len)
{
 return -1UL;
}
