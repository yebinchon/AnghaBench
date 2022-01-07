
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int IMPLEMENTER_ARM ;
 int PRODUCT_ID_KVM ;

__attribute__((used)) static unsigned long vgic_mmio_read_v3r_iidr(struct kvm_vcpu *vcpu,
          gpa_t addr, unsigned int len)
{
 return (PRODUCT_ID_KVM << 24) | (IMPLEMENTER_ARM << 0);
}
