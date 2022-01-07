
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; int * attr_values; } ;
typedef TYPE_1__ RBinDwarfDIE ;


 int R_FREE (int *) ;
 int r_bin_dwarf_free_attr_value (int *) ;

__attribute__((used)) static void r_bin_dwarf_free_die(RBinDwarfDIE *die) {
 size_t i;
 if (!die) {
  return;
 }
 for (i = 0; i < die->length; i++) {
  r_bin_dwarf_free_attr_value (&die->attr_values[i]);
 }
 R_FREE (die->attr_values);
}
