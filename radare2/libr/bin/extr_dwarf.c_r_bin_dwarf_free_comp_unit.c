
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; int * dies; } ;
typedef TYPE_1__ RBinDwarfCompUnit ;


 int R_FREE (int *) ;
 int r_bin_dwarf_free_die (int *) ;

__attribute__((used)) static void r_bin_dwarf_free_comp_unit(RBinDwarfCompUnit *cu) {
 size_t i;
 if (!cu) {
  return;
 }
 for (i = 0; i < cu->length; i++) {
  if (cu->dies) {
   r_bin_dwarf_free_die (&cu->dies[i]);
  }
 }
 R_FREE (cu->dies);
}
