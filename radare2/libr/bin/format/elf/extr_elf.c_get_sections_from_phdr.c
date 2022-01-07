
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_11__ {int e_phnum; } ;
struct TYPE_15__ {int dyn_entries; TYPE_3__* dyn_buf; TYPE_1__ ehdr; scalar_t__ phdr; } ;
struct TYPE_14__ {int last; } ;
struct TYPE_12__ {int d_ptr; int d_val; } ;
struct TYPE_13__ {int d_tag; TYPE_2__ d_un; } ;
typedef TYPE_4__ RBinElfSection ;
typedef TYPE_5__ ELFOBJ ;
 TYPE_4__* calloc (int,int) ;
 int create_section_from_phdr (TYPE_5__*,TYPE_4__*,int*,char*,int ,int ) ;
 int r_return_val_if_fail (int,int *) ;

__attribute__((used)) static RBinElfSection *get_sections_from_phdr(ELFOBJ *bin) {
 RBinElfSection *ret;
 int i, num_sections = 0;
 ut64 reldyn = 0, relava = 0, pltgotva = 0, relva = 0;
 ut64 reldynsz = 0, relasz = 0, pltgotsz = 0;
 r_return_val_if_fail (bin && bin->phdr, ((void*)0));
 if (!bin->ehdr.e_phnum || !bin->dyn_buf) {
  return ((void*)0);
 }

 for (i = 0; i < bin->dyn_entries; i++) {
  switch (bin->dyn_buf[i].d_tag) {
  case 131:
   reldyn = bin->dyn_buf[i].d_un.d_ptr;
   num_sections++;
   break;
  case 130:
   relva = bin->dyn_buf[i].d_un.d_ptr;
   num_sections++;
   break;
  case 128:
   reldynsz = bin->dyn_buf[i].d_un.d_val;
   break;
  case 129:
   relasz = bin->dyn_buf[i].d_un.d_val;
   break;
  case 133:
   pltgotva = bin->dyn_buf[i].d_un.d_ptr;
   num_sections++;
   break;
  case 132:
   pltgotsz = bin->dyn_buf[i].d_un.d_val;
   break;
  case 134:
   relava = bin->dyn_buf[i].d_un.d_ptr;
   num_sections++;
   break;
  default: break;
  }
 }
 ret = calloc (num_sections + 1, sizeof(RBinElfSection));
 if (!ret) {
  return ((void*)0);
 }
 i = 0;
 create_section_from_phdr (bin, ret, &i, ".rel.dyn", reldyn, reldynsz);
 create_section_from_phdr (bin, ret, &i, ".rela.plt", relava, pltgotsz);
 create_section_from_phdr (bin, ret, &i, ".rel.plt", relva, relasz);
 create_section_from_phdr (bin, ret, &i, ".got.plt", pltgotva, pltgotsz);
 ret[i].last = 1;
 return ret;
}
