
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_sections; TYPE_1__* sections; } ;
struct TYPE_4__ {scalar_t__ vaddr; int vsize; scalar_t__ paddr; } ;
typedef TYPE_2__ RBinPEObj ;
typedef scalar_t__ PE_DWord ;



__attribute__((used)) static PE_DWord bin_pe_rva_to_paddr(RBinPEObj* bin, PE_DWord rva) {
 PE_DWord section_base;
 int i, section_size;
 for (i = 0; i < bin->num_sections; i++) {
  section_base = bin->sections[i].vaddr;
  section_size = bin->sections[i].vsize;
  if (rva >= section_base && rva < section_base + section_size) {
   return bin->sections[i].paddr + (rva - section_base);
  }
 }
 return rva;
}
