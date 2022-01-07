
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int high_segment_index; TYPE_1__* segment_maps; } ;
typedef TYPE_2__ dsa_area ;
struct TYPE_5__ {int * segment; } ;


 int dsm_detach (int *) ;
 int pfree (TYPE_2__*) ;

void
dsa_detach(dsa_area *area)
{
 int i;


 for (i = 0; i <= area->high_segment_index; ++i)
  if (area->segment_maps[i].segment != ((void*)0))
   dsm_detach(area->segment_maps[i].segment);
 pfree(area);
}
