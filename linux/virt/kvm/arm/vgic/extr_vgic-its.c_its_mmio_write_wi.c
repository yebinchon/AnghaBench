
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_its {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;



__attribute__((used)) static void its_mmio_write_wi(struct kvm *kvm, struct vgic_its *its,
         gpa_t addr, unsigned int len, unsigned long val)
{

}
