
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_10__ {size_t nb_symbol; int nb_section; TYPE_2__** symbols; TYPE_1__** sections; } ;
typedef TYPE_3__ r_bin_omf_obj ;
struct TYPE_12__ {size_t size; size_t offset; size_t paddr; struct TYPE_12__* next; } ;
struct TYPE_11__ {size_t vaddr; size_t paddr; } ;
struct TYPE_9__ {int seg_idx; size_t offset; int name; } ;
struct TYPE_8__ {size_t vaddr; TYPE_5__* data; } ;
typedef TYPE_4__ RBinAddr ;
typedef TYPE_5__ OMF_data ;


 size_t OMF_BASE_ADDR ;
 int eprintf (char*) ;
 int strcmp (int ,char*) ;

bool r_bin_omf_get_entry(r_bin_omf_obj *obj, RBinAddr *addr) {
 ut32 ct_sym = 0;
 OMF_data *data;
 ut32 offset = 0;

 if (!obj) {
  return 0;
 }
 while (ct_sym < obj->nb_symbol) {
  if (!strcmp (obj->symbols[ct_sym]->name, "_start")) {
   if (obj->symbols[ct_sym]->seg_idx - 1 > obj->nb_section) {
    eprintf ("Invalid segment index for symbol _start\n");
    return 0;
   }
   addr->vaddr = obj->sections[obj->symbols[ct_sym]->seg_idx - 1]->vaddr + obj->symbols[ct_sym]->offset + OMF_BASE_ADDR;
   data = obj->sections[obj->symbols[ct_sym]->seg_idx - 1]->data;
   while (data) {
    offset += data->size;
    if (obj->symbols[ct_sym]->offset < offset) {
     addr->paddr = (obj->symbols[ct_sym]->offset - data->offset) + data->paddr;
     return 1;
    }
    data = data->next;
   }
  }
  ct_sym++;
 }
 return 0;
}
