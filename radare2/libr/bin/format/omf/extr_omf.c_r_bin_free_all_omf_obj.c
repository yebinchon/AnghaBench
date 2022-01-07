
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ names; scalar_t__ symbols; scalar_t__ sections; scalar_t__ records; } ;
typedef TYPE_1__ r_bin_omf_obj ;


 int free (TYPE_1__*) ;
 int free_all_omf_names (TYPE_1__*) ;
 int free_all_omf_records (TYPE_1__*) ;
 int free_all_omf_sections (TYPE_1__*) ;
 int free_all_omf_symbols (TYPE_1__*) ;

void r_bin_free_all_omf_obj(r_bin_omf_obj *obj) {
 if (obj) {
  if (obj->records) {
   free_all_omf_records (obj);
  }
  if (obj->sections) {
   free_all_omf_sections (obj);
  }
  if (obj->symbols) {
   free_all_omf_symbols (obj);
  }
  if (obj->names) {
   free_all_omf_names (obj);
  }
  free (obj);
 }
}
