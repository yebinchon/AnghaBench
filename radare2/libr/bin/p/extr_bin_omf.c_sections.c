
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_7__ {scalar_t__ nb_section; int * sections; } ;
typedef TYPE_2__ r_bin_omf_obj ;
struct TYPE_8__ {TYPE_1__* o; } ;
struct TYPE_6__ {TYPE_2__* bin_obj; } ;
typedef int RList ;
typedef TYPE_3__ RBinFile ;


 int r_bin_omf_send_sections (int *,int ,TYPE_2__*) ;
 int * r_list_new () ;

__attribute__((used)) static RList *sections(RBinFile *bf) {
 RList *ret;
 ut32 ct_omf_sect = 0;

 if (!bf || !bf->o || !bf->o->bin_obj) {
  return ((void*)0);
 }
 r_bin_omf_obj *obj = bf->o->bin_obj;

 if (!(ret = r_list_new ())) {
  return ((void*)0);
 }

 while (ct_omf_sect < obj->nb_section) {
  if (!r_bin_omf_send_sections (ret, obj->sections[ct_omf_sect++], bf->o->bin_obj)) {

   return ret;
  }
 }
 return ret;
}
