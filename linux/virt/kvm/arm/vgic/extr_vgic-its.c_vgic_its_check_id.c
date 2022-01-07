
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vgic_its {TYPE_1__* dev; } ;
typedef int phys_addr_t ;
typedef int indirect_ptr ;
typedef int gpa_t ;
typedef int gfn_t ;
struct TYPE_5__ {int srcu; } ;
struct TYPE_4__ {TYPE_2__* kvm; } ;


 int BIT_ULL (int) ;
 int GENMASK_ULL (int,int) ;
 int GITS_BASER_ADDR_48_to_52 (int) ;
 int GITS_BASER_ENTRY_SIZE (int) ;
 int GITS_BASER_INDIRECT ;
 int GITS_BASER_NR_PAGES (int) ;
 int GITS_BASER_TYPE (int) ;


 int PAGE_SHIFT ;
 int SZ_64K ;
 int VITS_TYPER_DEVBITS ;
 int kvm_is_visible_gfn (TYPE_2__*,int) ;
 scalar_t__ kvm_read_guest_lock (TYPE_2__*,int,int*,int) ;
 int le64_to_cpu (int) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static bool vgic_its_check_id(struct vgic_its *its, u64 baser, u32 id,
         gpa_t *eaddr)
{
 int l1_tbl_size = GITS_BASER_NR_PAGES(baser) * SZ_64K;
 u64 indirect_ptr, type = GITS_BASER_TYPE(baser);
 phys_addr_t base = GITS_BASER_ADDR_48_to_52(baser);
 int esz = GITS_BASER_ENTRY_SIZE(baser);
 int index, idx;
 gfn_t gfn;
 bool ret;

 switch (type) {
 case 128:
  if (id >= BIT_ULL(VITS_TYPER_DEVBITS))
   return 0;
  break;
 case 129:

  if (id >= BIT_ULL(16))
   return 0;
  break;
 default:
  return 0;
 }

 if (!(baser & GITS_BASER_INDIRECT)) {
  phys_addr_t addr;

  if (id >= (l1_tbl_size / esz))
   return 0;

  addr = base + id * esz;
  gfn = addr >> PAGE_SHIFT;

  if (eaddr)
   *eaddr = addr;

  goto out;
 }


 index = id / (SZ_64K / esz);
 if (index >= (l1_tbl_size / sizeof(u64)))
  return 0;


 if (kvm_read_guest_lock(its->dev->kvm,
      base + index * sizeof(indirect_ptr),
      &indirect_ptr, sizeof(indirect_ptr)))
  return 0;

 indirect_ptr = le64_to_cpu(indirect_ptr);


 if (!(indirect_ptr & BIT_ULL(63)))
  return 0;


 indirect_ptr &= GENMASK_ULL(51, 16);


 index = id % (SZ_64K / esz);
 indirect_ptr += index * esz;
 gfn = indirect_ptr >> PAGE_SHIFT;

 if (eaddr)
  *eaddr = indirect_ptr;

out:
 idx = srcu_read_lock(&its->dev->kvm->srcu);
 ret = kvm_is_visible_gfn(its->dev->kvm, gfn);
 srcu_read_unlock(&its->dev->kvm->srcu, idx);
 return ret;
}
