
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_its {int creadr; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;


 unsigned long extract_bytes (int ,int,unsigned int) ;

__attribute__((used)) static unsigned long vgic_mmio_read_its_creadr(struct kvm *kvm,
            struct vgic_its *its,
            gpa_t addr, unsigned int len)
{
 return extract_bytes(its->creadr, addr & 0x7, len);
}
