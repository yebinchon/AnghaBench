
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r_bin_mz_reloc_t {scalar_t__ vaddr; int last; int paddr; } ;
struct r_bin_mz_obj_t {scalar_t__ load_module_size; TYPE_2__* relocation_entries; TYPE_1__* dos_header; } ;
struct TYPE_4__ {int offset; int segment; } ;
struct TYPE_3__ {int num_relocs; } ;
typedef TYPE_2__ MZ_image_relocation_entry ;


 struct r_bin_mz_reloc_t* calloc (int const,int) ;
 int eprintf (char*) ;
 int r_bin_mz_la_to_pa (struct r_bin_mz_obj_t const*,scalar_t__) ;
 scalar_t__ r_bin_mz_va_to_la (int ,int ) ;

struct r_bin_mz_reloc_t *r_bin_mz_get_relocs (const struct r_bin_mz_obj_t *bin) {
 int i, j;
 const int num_relocs = bin->dos_header->num_relocs;
 const MZ_image_relocation_entry *const rel_entry = bin->relocation_entries;

 struct r_bin_mz_reloc_t *relocs = calloc (num_relocs + 1, sizeof (*relocs));
 if (!relocs) {
  eprintf ("Error: calloc (struct r_bin_mz_reloc_t)\n");
  return ((void*)0);
 }
 for (i = 0, j = 0; i < num_relocs; i++) {
  relocs[j].vaddr = r_bin_mz_va_to_la (rel_entry[i].segment,
   rel_entry[i].offset);
  relocs[j].paddr = r_bin_mz_la_to_pa (bin, relocs[j].vaddr);


  if (relocs[j].vaddr < bin->load_module_size) {
   j++;
  }
 }
 relocs[j].last = 1;

 return relocs;
}
