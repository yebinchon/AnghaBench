
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {size_t freed_segment_counter; int high_segment_index; TYPE_3__* segment_maps; TYPE_1__* control; } ;
typedef TYPE_4__ dsa_area ;
struct TYPE_9__ {int * mapped_address; TYPE_2__* header; int * segment; } ;
struct TYPE_8__ {scalar_t__ freed; } ;
struct TYPE_7__ {size_t freed_segment_counter; } ;


 int Assert (int ) ;
 int DSA_AREA_LOCK (TYPE_4__*) ;
 int LWLockHeldByMe (int ) ;
 int dsm_detach (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
check_for_freed_segments_locked(dsa_area *area)
{
 size_t freed_segment_counter;
 int i;

 Assert(LWLockHeldByMe(DSA_AREA_LOCK(area)));
 freed_segment_counter = area->control->freed_segment_counter;
 if (unlikely(area->freed_segment_counter != freed_segment_counter))
 {
  for (i = 0; i <= area->high_segment_index; ++i)
  {
   if (area->segment_maps[i].header != ((void*)0) &&
    area->segment_maps[i].header->freed)
   {
    dsm_detach(area->segment_maps[i].segment);
    area->segment_maps[i].segment = ((void*)0);
    area->segment_maps[i].header = ((void*)0);
    area->segment_maps[i].mapped_address = ((void*)0);
   }
  }
  area->freed_segment_counter = freed_segment_counter;
 }
}
