
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef long long ut64 ;
struct TYPE_7__ {int nb_section; TYPE_1__** sections; } ;
typedef TYPE_2__ r_bin_omf_obj ;
struct TYPE_8__ {int seg_idx; long long offset; int name; } ;
struct TYPE_6__ {long long vaddr; } ;
typedef TYPE_3__ OMF_symbol ;


 long long OMF_BASE_ADDR ;
 int eprintf (char*,int ) ;

ut64 r_bin_omf_get_vaddr_sym(r_bin_omf_obj *obj, OMF_symbol *sym) {
 if (!obj->sections) {
  return 0LL;
 }
 if (sym->seg_idx >= obj->nb_section) {
  eprintf ("Invalid segment index for symbol %s\n", sym->name);
  return 0;
 }
 if (sym->seg_idx == 0) {
  return 0;
 }
 return obj->sections[sym->seg_idx - 1]->vaddr + sym->offset + OMF_BASE_ADDR;
}
