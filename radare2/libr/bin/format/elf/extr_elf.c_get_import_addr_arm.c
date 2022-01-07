
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct ht_rel_t {int k; } ;
struct TYPE_3__ {int rva; } ;
typedef TYPE_1__ RBinElfSection ;
typedef int ELFOBJ ;


 int REL_TYPE ;


 int UT32_MAX ;
 int UT64_MAX ;
 int bprintf (char*,int) ;

__attribute__((used)) static ut64 get_import_addr_arm(ELFOBJ *bin, struct ht_rel_t *rel, RBinElfSection *plt_section) {
 if (!plt_section) {
  return UT32_MAX;
 }
 ut64 plt_addr = plt_section->rva;
 switch (REL_TYPE) {
 case 128: {
  plt_addr += rel->k * 12 + 20;

  if (plt_addr & 1) {
   plt_addr--;
  }
  return plt_addr;
 }
 case 129:
  return plt_addr + rel->k * 16 + 32;
 default:
  bprintf ("Unsupported relocation type for imports %d\n", REL_TYPE);
  return UT64_MAX;
 }
}
