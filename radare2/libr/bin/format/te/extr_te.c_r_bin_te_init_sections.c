
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
struct r_bin_te_obj_t {int size; scalar_t__ section_header; int b; TYPE_1__* header; } ;
struct TYPE_2__ {int NumberOfSections; } ;
typedef int TE_image_section_header ;
typedef int TE_image_file_header ;


 int eprintf (char*) ;
 scalar_t__ malloc (int) ;
 int perror (char*) ;
 int r_buf_read_at (int ,int,int *,int) ;

__attribute__((used)) static int r_bin_te_init_sections(struct r_bin_te_obj_t* bin) {
 int sections_size = sizeof(TE_image_section_header) * bin->header->NumberOfSections;
 if (sections_size > bin->size) {
  eprintf ("Invalid NumberOfSections value\n");
  return 0;
 }
 if (!(bin->section_header = malloc (sections_size))) {
  perror ("malloc (sections headers)");
  return 0;
 }
 if (r_buf_read_at (bin->b, sizeof(TE_image_file_header),
    (ut8*)bin->section_header, sections_size) == -1) {
  eprintf ("Error: read (sections headers)\n");
  return 0;
 }
 return 1;
}
