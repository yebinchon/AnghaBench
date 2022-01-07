
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; int * comp_units; } ;
typedef TYPE_1__ RBinDwarfDebugInfo ;


 int R_FREE (int *) ;
 int r_bin_dwarf_free_comp_unit (int *) ;

__attribute__((used)) static void r_bin_dwarf_free_debug_info(RBinDwarfDebugInfo *inf) {
 size_t i;
 if (!inf) {
  return;
 }
 for (i = 0; i < inf->length; i++) {
  r_bin_dwarf_free_comp_unit (&inf->comp_units[i]);
 }
 R_FREE (inf->comp_units);
}
