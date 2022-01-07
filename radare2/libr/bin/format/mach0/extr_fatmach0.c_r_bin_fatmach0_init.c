
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_4__ {int nfat_arch; void* magic; } ;
struct r_bin_fatmach0_obj_t {int nfat_arch; int size; TYPE_2__* archs; int b; TYPE_1__ hdr; } ;
struct fat_header {int dummy; } ;
struct fat_arch {int dummy; } ;
struct TYPE_5__ {void* align; void* size; void* offset; void* cpusubtype; void* cputype; } ;


 void* FAT_MAGIC ;
 int R_FREE (TYPE_2__*) ;
 int eprintf (char*) ;
 TYPE_2__* malloc (int) ;
 int perror (char*) ;
 int r_buf_read_at (int ,int,int *,int) ;
 void* r_read_be32 (int *) ;

__attribute__((used)) static int r_bin_fatmach0_init(struct r_bin_fatmach0_obj_t* bin) {
 ut32 size;
 ut32 i;
 ut8 hdrbytes[sizeof (struct fat_header)] = {0};
 int len = r_buf_read_at (bin->b, 0, &hdrbytes[0], sizeof (struct fat_header));
 if (len != sizeof (struct fat_header)) {
  perror ("read (fat_header)");
  return 0;
 }
 bin->hdr.magic = r_read_be32 (&hdrbytes[0]);
 bin->hdr.nfat_arch = r_read_be32 (&hdrbytes[4]);
 bin->nfat_arch = bin->hdr.nfat_arch;
 if (sizeof (struct fat_header) + bin->nfat_arch *
  sizeof (struct fat_arch) > bin->size) {
  return 0;
 }
 if (bin->hdr.magic != FAT_MAGIC || !bin->nfat_arch || bin->nfat_arch < 1) {
  eprintf ("Endian FAT_MAGIC failed (?)\n");
  return 0;
 }
 size = bin->nfat_arch * sizeof (struct fat_arch);
 if (size < bin->nfat_arch) {
  return 0;
 }
 if (!(bin->archs = malloc (size))) {
  perror ("malloc (fat_arch)");
  return 0;
 }
 for (i = 0; i < bin->nfat_arch; i++) {
  ut8 archbytes[sizeof (struct fat_arch)] = {0};
  len = r_buf_read_at (bin->b, 8 + i * sizeof (struct fat_arch), &archbytes[0], sizeof (struct fat_arch));
  if (len != sizeof (struct fat_arch)) {
   perror ("read (fat_arch)");
   R_FREE (bin->archs);
   return 0;
  }
  bin->archs[i].cputype = r_read_be32 (&archbytes[0]);
  bin->archs[i].cpusubtype = r_read_be32 (&archbytes[4]);
  bin->archs[i].offset = r_read_be32 (&archbytes[8]);
  bin->archs[i].size = r_read_be32 (&archbytes[12]);
  bin->archs[i].align = r_read_be32 (&archbytes[16]);
 }
 return 1;
}
