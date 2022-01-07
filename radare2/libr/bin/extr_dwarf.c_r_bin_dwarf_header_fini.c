
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* name; } ;
struct TYPE_4__ {size_t file_names_count; TYPE_3__* file_names; TYPE_3__* std_opcode_lengths; } ;
typedef TYPE_1__ RBinDwarfLNPHeader ;


 int free (TYPE_3__*) ;

__attribute__((used)) static void r_bin_dwarf_header_fini(RBinDwarfLNPHeader *hdr) {
 if (hdr) {
  size_t i;

  for (i = 0; i < hdr->file_names_count; i ++) {
   free (hdr->file_names[i].name);
  }

  free (hdr->std_opcode_lengths);
  free (hdr->file_names);
 }
}
