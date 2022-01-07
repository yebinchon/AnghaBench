
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut32 ;
struct reloc_struct_t {scalar_t__ data_offset; } ;



__attribute__((used)) static int search_old_relocation(struct reloc_struct_t *reloc_table,
                                 ut32 addr_to_patch, int n_reloc) {
 int i;
 for (i = 0; i < n_reloc; i++) {
  if (addr_to_patch == reloc_table[i].data_offset) {
   return i;
  }
 }
 return -1;
}
