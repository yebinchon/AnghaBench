
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* file; } ;
typedef TYPE_1__ RBinDwarfRow ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void r_bin_dwarf_row_free(void *p) {
 RBinDwarfRow *row = (RBinDwarfRow*)p;
 free (row->file);
 free (row);
}
