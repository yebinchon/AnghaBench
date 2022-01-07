
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_its_abi {int ite_esz; } ;
struct vgic_its {int dummy; } ;
struct its_device {int num_eventid_bits; int itt_addr; } ;
typedef int gpa_t ;


 int BIT_ULL (int ) ;
 int scan_its_table (struct vgic_its*,int ,size_t,int,int ,int ,struct its_device*) ;
 struct vgic_its_abi* vgic_its_get_abi (struct vgic_its*) ;
 int vgic_its_restore_ite ;

__attribute__((used)) static int vgic_its_restore_itt(struct vgic_its *its, struct its_device *dev)
{
 const struct vgic_its_abi *abi = vgic_its_get_abi(its);
 gpa_t base = dev->itt_addr;
 int ret;
 int ite_esz = abi->ite_esz;
 size_t max_size = BIT_ULL(dev->num_eventid_bits) * ite_esz;

 ret = scan_its_table(its, base, max_size, ite_esz, 0,
        vgic_its_restore_ite, dev);


 if (ret > 0)
  ret = 0;

 return ret;
}
