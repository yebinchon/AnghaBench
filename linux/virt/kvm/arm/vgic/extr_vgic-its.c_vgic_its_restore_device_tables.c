
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vgic_its_abi {int dte_esz; } ;
struct vgic_its {int baser_device_table; } ;
typedef int gpa_t ;


 int GITS_BASER_ADDR_48_to_52 (int) ;
 int GITS_BASER_INDIRECT ;
 int GITS_BASER_NR_PAGES (int) ;
 int GITS_BASER_VALID ;
 int GITS_LVL1_ENTRY_SIZE ;
 int SZ_64K ;
 int handle_l1_dte ;
 int scan_its_table (struct vgic_its*,int ,int,int,int ,int ,int *) ;
 struct vgic_its_abi* vgic_its_get_abi (struct vgic_its*) ;
 int vgic_its_restore_dte ;

__attribute__((used)) static int vgic_its_restore_device_tables(struct vgic_its *its)
{
 const struct vgic_its_abi *abi = vgic_its_get_abi(its);
 u64 baser = its->baser_device_table;
 int l1_esz, ret;
 int l1_tbl_size = GITS_BASER_NR_PAGES(baser) * SZ_64K;
 gpa_t l1_gpa;

 if (!(baser & GITS_BASER_VALID))
  return 0;

 l1_gpa = GITS_BASER_ADDR_48_to_52(baser);

 if (baser & GITS_BASER_INDIRECT) {
  l1_esz = GITS_LVL1_ENTRY_SIZE;
  ret = scan_its_table(its, l1_gpa, l1_tbl_size, l1_esz, 0,
         handle_l1_dte, ((void*)0));
 } else {
  l1_esz = abi->dte_esz;
  ret = scan_its_table(its, l1_gpa, l1_tbl_size, l1_esz, 0,
         vgic_its_restore_dte, ((void*)0));
 }


 if (ret > 0)
  ret = 0;

 return ret;
}
