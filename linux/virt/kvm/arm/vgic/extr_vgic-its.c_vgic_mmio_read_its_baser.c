
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vgic_its {int baser_coll_table; int baser_device_table; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;


 int BASER_INDEX (int) ;
 unsigned long extract_bytes (int ,int,unsigned int) ;

__attribute__((used)) static unsigned long vgic_mmio_read_its_baser(struct kvm *kvm,
           struct vgic_its *its,
           gpa_t addr, unsigned int len)
{
 u64 reg;

 switch (BASER_INDEX(addr)) {
 case 0:
  reg = its->baser_device_table;
  break;
 case 1:
  reg = its->baser_coll_table;
  break;
 default:
  reg = 0;
  break;
 }

 return extract_bytes(reg, addr & 7, len);
}
