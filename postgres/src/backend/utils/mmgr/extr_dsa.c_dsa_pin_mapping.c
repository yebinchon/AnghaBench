
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mapping_pinned; int high_segment_index; TYPE_1__* segment_maps; } ;
typedef TYPE_2__ dsa_area ;
struct TYPE_4__ {int * segment; } ;


 int Assert (int) ;
 int dsm_pin_mapping (int *) ;

void
dsa_pin_mapping(dsa_area *area)
{
 int i;

 Assert(!area->mapping_pinned);
 area->mapping_pinned = 1;

 for (i = 0; i <= area->high_segment_index; ++i)
  if (area->segment_maps[i].segment != ((void*)0))
   dsm_pin_mapping(area->segment_maps[i].segment);
}
