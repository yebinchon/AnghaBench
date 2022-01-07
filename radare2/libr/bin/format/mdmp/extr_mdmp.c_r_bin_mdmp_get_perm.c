
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int ut32 ;
struct r_bin_mdmp_obj {int dummy; } ;
struct minidump_memory_info {int protect; } ;
 int R_PERM_R ;
 int R_PERM_RW ;
 int R_PERM_RWX ;
 int R_PERM_RX ;
 int R_PERM_X ;
 struct minidump_memory_info* r_bin_mdmp_get_mem_info (struct r_bin_mdmp_obj*,int ) ;

ut32 r_bin_mdmp_get_perm(struct r_bin_mdmp_obj *obj, ut64 vaddr) {
 struct minidump_memory_info *mem_info;

 if (!(mem_info = r_bin_mdmp_get_mem_info(obj, vaddr))) {

  return R_PERM_R;
 }



 switch (mem_info->protect) {
 case 131:
  return R_PERM_R;
 case 130:
  return R_PERM_RW;
 case 138:
  return R_PERM_X;
 case 137:
  return R_PERM_RX;
 case 136:
  return R_PERM_RWX;
 case 133:
 case 128:
 case 135:
 case 134:
 case 132:
 case 129:
 default:
  return 0;
 }
}
