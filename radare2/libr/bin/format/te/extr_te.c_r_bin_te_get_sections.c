
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r_bin_te_section_t {int last; int flags; void* paddr; int vsize; int size; void* vaddr; int name; } ;
struct r_bin_te_obj_t {TYPE_1__* header; TYPE_2__* section_header; } ;
struct TYPE_4__ {void* VirtualAddress; void* PointerToRawData; int Characteristics; int VirtualSize; int SizeOfRawData; int Name; } ;
struct TYPE_3__ {int NumberOfSections; } ;
typedef TYPE_2__ TE_image_section_header ;


 int TE_IMAGE_SIZEOF_NAME ;
 struct r_bin_te_section_t* calloc (int,int) ;
 int memcpy (int ,int ,int ) ;
 int perror (char*) ;
 void* r_bin_te_get_stripped_delta (struct r_bin_te_obj_t*) ;

struct r_bin_te_section_t* r_bin_te_get_sections(struct r_bin_te_obj_t* bin) {
 struct r_bin_te_section_t *sections = ((void*)0);
 TE_image_section_header *shdr;
 int i, sections_count;
 if (!bin) {
  return ((void*)0);
 }
 shdr = bin->section_header;
 sections_count = bin->header->NumberOfSections;

 if (!(sections = calloc ((sections_count + 1), sizeof (struct r_bin_te_section_t)))) {
  perror ("malloc (sections)");
  return ((void*)0);
 }
 for (i = 0; i < sections_count; i++) {
  memcpy (sections[i].name, shdr[i].Name, TE_IMAGE_SIZEOF_NAME);


  sections[i].vaddr = shdr[i].VirtualAddress - r_bin_te_get_stripped_delta (bin);
  sections[i].size = shdr[i].SizeOfRawData;
  sections[i].vsize = shdr[i].VirtualSize;
  sections[i].paddr = shdr[i].PointerToRawData - r_bin_te_get_stripped_delta (bin);
  sections[i].flags = shdr[i].Characteristics;
  sections[i].last = 0;
 }
 sections[i].last = 1;
 return sections;
}
