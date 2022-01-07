
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {int e_shnum; } ;
struct TYPE_7__ {char* shstrtab; size_t shstrtab_size; char* dynstr; scalar_t__ size; scalar_t__ dynstr_size; TYPE_2__* shdr; int b; TYPE_1__ ehdr; } ;
struct TYPE_6__ {size_t sh_name; scalar_t__ sh_type; scalar_t__ sh_size; scalar_t__ sh_offset; } ;
typedef TYPE_3__ ELFOBJ ;


 int R_FREE (char*) ;
 scalar_t__ SHT_STRTAB ;
 int bprintf (char*) ;
 scalar_t__ calloc (scalar_t__,int) ;
 int r_buf_read_at (int ,scalar_t__,int *,scalar_t__) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool init_dynstr(ELFOBJ *bin) {
 int i, r;
 const char *section_name = ((void*)0);
 if (!bin || !bin->shdr) {
  return 0;
 }
 if (!bin->shstrtab) {
  return 0;
 }
 for (i = 0; i < bin->ehdr.e_shnum; ++i) {
  if (bin->shdr[i].sh_name > bin->shstrtab_size) {
   return 0;
  }
  section_name = &bin->shstrtab[bin->shdr[i].sh_name];
  if (bin->shdr[i].sh_type == SHT_STRTAB && !strcmp (section_name, ".dynstr")) {
   if (!(bin->dynstr = (char*) calloc (bin->shdr[i].sh_size + 1, sizeof (char)))) {
    bprintf("Cannot allocate memory for dynamic strings\n");
    return 0;
   }
   if (bin->shdr[i].sh_offset > bin->size) {
    return 0;
   }
   if (bin->shdr[i].sh_offset + bin->shdr[i].sh_size > bin->size) {
    return 0;
   }
   if (bin->shdr[i].sh_offset + bin->shdr[i].sh_size < bin->shdr[i].sh_size) {
    return 0;
   }
   r = r_buf_read_at (bin->b, bin->shdr[i].sh_offset, (ut8*)bin->dynstr, bin->shdr[i].sh_size);
   if (r < 1) {
    R_FREE (bin->dynstr);
    bin->dynstr_size = 0;
    return 0;
   }
   bin->dynstr_size = bin->shdr[i].sh_size;
   return 1;
  }
 }
 return 0;
}
