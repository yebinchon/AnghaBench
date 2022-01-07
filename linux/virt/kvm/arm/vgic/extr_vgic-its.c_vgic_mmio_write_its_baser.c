
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vgic_its_abi {int dte_esz; int cte_esz; } ;
struct vgic_its {int baser_device_table; int baser_coll_table; int its_lock; scalar_t__ enabled; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;


 int BASER_INDEX (int) ;
 int GITS_BASER_ENTRY_SIZE_SHIFT ;
 int GITS_BASER_INDIRECT ;
 int GITS_BASER_RO_MASK ;


 int GITS_BASER_TYPE_SHIFT ;
 int GITS_BASER_VALID ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int update_64bit_reg (int,int,unsigned int,unsigned long) ;
 int vgic_its_free_collection_list (struct kvm*,struct vgic_its*) ;
 int vgic_its_free_device_list (struct kvm*,struct vgic_its*) ;
 struct vgic_its_abi* vgic_its_get_abi (struct vgic_its*) ;
 int vgic_sanitise_its_baser (int) ;

__attribute__((used)) static void vgic_mmio_write_its_baser(struct kvm *kvm,
          struct vgic_its *its,
          gpa_t addr, unsigned int len,
          unsigned long val)
{
 const struct vgic_its_abi *abi = vgic_its_get_abi(its);
 u64 entry_size, table_type;
 u64 reg, *regptr, clearbits = 0;


 if (its->enabled)
  return;

 switch (BASER_INDEX(addr)) {
 case 0:
  regptr = &its->baser_device_table;
  entry_size = abi->dte_esz;
  table_type = 128;
  break;
 case 1:
  regptr = &its->baser_coll_table;
  entry_size = abi->cte_esz;
  table_type = 129;
  clearbits = GITS_BASER_INDIRECT;
  break;
 default:
  return;
 }

 reg = update_64bit_reg(*regptr, addr & 7, len, val);
 reg &= ~GITS_BASER_RO_MASK;
 reg &= ~clearbits;

 reg |= (entry_size - 1) << GITS_BASER_ENTRY_SIZE_SHIFT;
 reg |= table_type << GITS_BASER_TYPE_SHIFT;
 reg = vgic_sanitise_its_baser(reg);

 *regptr = reg;

 if (!(reg & GITS_BASER_VALID)) {

  mutex_lock(&its->its_lock);
  switch (table_type) {
  case 128:
   vgic_its_free_device_list(kvm, its);
   break;
  case 129:
   vgic_its_free_collection_list(kvm, its);
   break;
  }
  mutex_unlock(&its->its_lock);
 }
}
