
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_its_abi {int dte_esz; int cte_esz; } ;
struct vgic_its {int baser_coll_table; int baser_device_table; } ;


 int GIC_ENCODE_SZ (int ,int) ;
 int GITS_BASER_ENTRY_SIZE_MASK ;
 int GITS_BASER_ENTRY_SIZE_SHIFT ;
 struct vgic_its_abi* vgic_its_get_abi (struct vgic_its*) ;

__attribute__((used)) static int vgic_its_commit_v0(struct vgic_its *its)
{
 const struct vgic_its_abi *abi;

 abi = vgic_its_get_abi(its);
 its->baser_coll_table &= ~GITS_BASER_ENTRY_SIZE_MASK;
 its->baser_device_table &= ~GITS_BASER_ENTRY_SIZE_MASK;

 its->baser_coll_table |= (GIC_ENCODE_SZ(abi->cte_esz, 5)
     << GITS_BASER_ENTRY_SIZE_SHIFT);

 its->baser_device_table |= (GIC_ENCODE_SZ(abi->dte_esz, 5)
     << GITS_BASER_ENTRY_SIZE_SHIFT);
 return 0;
}
