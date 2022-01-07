
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int segment_entries; int resident_name_table; int ne_header; int entry_table; int resources; } ;
typedef TYPE_1__ r_bin_ne_obj_t ;


 int free (int ) ;
 int r_list_free (int ) ;

void r_bin_ne_free(r_bin_ne_obj_t *bin) {

 r_list_free (bin->resources);
 free (bin->entry_table);
 free (bin->ne_header);
 free (bin->resident_name_table);
 free (bin->segment_entries);
}
