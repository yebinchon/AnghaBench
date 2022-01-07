
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* header; int fpm; } ;
typedef TYPE_3__ dsa_segment_map ;
typedef scalar_t__ dsa_segment_index ;
struct TYPE_16__ {TYPE_1__* control; } ;
typedef TYPE_4__ dsa_area ;
struct TYPE_14__ {scalar_t__ next; size_t bin; scalar_t__ prev; } ;
struct TYPE_13__ {scalar_t__* segment_bins; } ;


 int Assert (int) ;
 int DSA_AREA_LOCK (TYPE_4__*) ;
 size_t DSA_NUM_SEGMENT_BINS ;
 scalar_t__ DSA_SEGMENT_INDEX_NONE ;
 int LWLockHeldByMe (int ) ;
 int check_for_freed_segments_locked (TYPE_4__*) ;
 size_t contiguous_pages_to_segment_bin (size_t) ;
 size_t fpm_largest (int ) ;
 TYPE_3__* get_segment_by_index (TYPE_4__*,scalar_t__) ;
 int unlink_segment (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static dsa_segment_map *
get_best_segment(dsa_area *area, size_t npages)
{
 size_t bin;

 Assert(LWLockHeldByMe(DSA_AREA_LOCK(area)));
 check_for_freed_segments_locked(area);





 for (bin = contiguous_pages_to_segment_bin(npages);
   bin < DSA_NUM_SEGMENT_BINS;
   ++bin)
 {




  size_t threshold = (size_t) 1 << (bin - 1);
  dsa_segment_index segment_index;


  segment_index = area->control->segment_bins[bin];
  while (segment_index != DSA_SEGMENT_INDEX_NONE)
  {
   dsa_segment_map *segment_map;
   dsa_segment_index next_segment_index;
   size_t contiguous_pages;

   segment_map = get_segment_by_index(area, segment_index);
   next_segment_index = segment_map->header->next;
   contiguous_pages = fpm_largest(segment_map->fpm);


   if (contiguous_pages >= threshold && contiguous_pages < npages)
   {
    segment_index = next_segment_index;
    continue;
   }


   if (contiguous_pages < threshold)
   {
    size_t new_bin;

    new_bin = contiguous_pages_to_segment_bin(contiguous_pages);


    unlink_segment(area, segment_map);


    segment_map->header->prev = DSA_SEGMENT_INDEX_NONE;
    segment_map->header->next =
     area->control->segment_bins[new_bin];
    segment_map->header->bin = new_bin;
    area->control->segment_bins[new_bin] = segment_index;
    if (segment_map->header->next != DSA_SEGMENT_INDEX_NONE)
    {
     dsa_segment_map *next;

     next = get_segment_by_index(area,
            segment_map->header->next);
     Assert(next->header->bin == new_bin);
     next->header->prev = segment_index;
    }





   }


   if (contiguous_pages >= npages)
    return segment_map;


   segment_index = next_segment_index;
  }
 }


 return ((void*)0);
}
