
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vgic_its_abi {int dte_esz; } ;
struct vgic_its {int dummy; } ;
typedef int gpa_t ;


 int KVM_ITS_L1E_ADDR_MASK ;
 int KVM_ITS_L1E_VALID_MASK ;
 int SZ_64K ;
 int le64_to_cpu (int) ;
 int scan_its_table (struct vgic_its*,int,int,int,int,int ,int *) ;
 struct vgic_its_abi* vgic_its_get_abi (struct vgic_its*) ;
 int vgic_its_restore_dte ;

__attribute__((used)) static int handle_l1_dte(struct vgic_its *its, u32 id, void *addr,
    void *opaque)
{
 const struct vgic_its_abi *abi = vgic_its_get_abi(its);
 int l2_start_id = id * (SZ_64K / abi->dte_esz);
 u64 entry = *(u64 *)addr;
 int dte_esz = abi->dte_esz;
 gpa_t gpa;
 int ret;

 entry = le64_to_cpu(entry);

 if (!(entry & KVM_ITS_L1E_VALID_MASK))
  return 1;

 gpa = entry & KVM_ITS_L1E_ADDR_MASK;

 ret = scan_its_table(its, gpa, SZ_64K, dte_esz,
        l2_start_id, vgic_its_restore_dte, ((void*)0));

 return ret;
}
