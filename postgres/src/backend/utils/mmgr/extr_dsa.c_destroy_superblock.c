
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_22__ {int * mapped_address; TYPE_2__* header; int * segment; int fpm; } ;
typedef TYPE_3__ dsa_segment_map ;
typedef size_t dsa_segment_index ;
typedef int dsa_pointer ;
struct TYPE_23__ {int size_class; int npages; int start; } ;
typedef TYPE_4__ dsa_area_span ;
struct TYPE_24__ {TYPE_1__* control; } ;
typedef TYPE_5__ dsa_area ;
struct TYPE_21__ {scalar_t__ usable_pages; int freed; scalar_t__ size; } ;
struct TYPE_20__ {scalar_t__ total_segment_size; int freed_segment_counter; int * segment_handles; } ;


 int Assert (int) ;
 int DSA_AREA_LOCK (TYPE_5__*) ;
 int DSA_EXTRACT_OFFSET (int ) ;
 int DSA_EXTRACT_SEGMENT_NUMBER (int ) ;
 int DSA_SCLASS_BLOCK_OF_SPANS ;
 int DSM_HANDLE_INVALID ;
 int FPM_PAGE_SIZE ;
 int FreePageManagerPut (int ,int,int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int check_for_freed_segments_locked (TYPE_5__*) ;
 int dsa_free (TYPE_5__*,int ) ;
 TYPE_4__* dsa_get_address (TYPE_5__*,int ) ;
 int dsm_detach (int *) ;
 int dsm_segment_handle (int *) ;
 int dsm_unpin_segment (int ) ;
 scalar_t__ fpm_largest (int ) ;
 TYPE_3__* get_segment_by_index (TYPE_5__*,int ) ;
 size_t get_segment_index (TYPE_5__*,TYPE_3__*) ;
 int unlink_segment (TYPE_5__*,TYPE_3__*) ;
 int unlink_span (TYPE_5__*,TYPE_4__*) ;

__attribute__((used)) static void
destroy_superblock(dsa_area *area, dsa_pointer span_pointer)
{
 dsa_area_span *span = dsa_get_address(area, span_pointer);
 int size_class = span->size_class;
 dsa_segment_map *segment_map;



 unlink_span(area, span);






 LWLockAcquire(DSA_AREA_LOCK(area), LW_EXCLUSIVE);
 check_for_freed_segments_locked(area);
 segment_map =
  get_segment_by_index(area, DSA_EXTRACT_SEGMENT_NUMBER(span->start));
 FreePageManagerPut(segment_map->fpm,
        DSA_EXTRACT_OFFSET(span->start) / FPM_PAGE_SIZE,
        span->npages);

 if (fpm_largest(segment_map->fpm) == segment_map->header->usable_pages)
 {
  dsa_segment_index index = get_segment_index(area, segment_map);


  if (index != 0)
  {




   unlink_segment(area, segment_map);
   segment_map->header->freed = 1;
   Assert(area->control->total_segment_size >=
       segment_map->header->size);
   area->control->total_segment_size -=
    segment_map->header->size;
   dsm_unpin_segment(dsm_segment_handle(segment_map->segment));
   dsm_detach(segment_map->segment);
   area->control->segment_handles[index] = DSM_HANDLE_INVALID;
   ++area->control->freed_segment_counter;
   segment_map->segment = ((void*)0);
   segment_map->header = ((void*)0);
   segment_map->mapped_address = ((void*)0);
  }
 }
 LWLockRelease(DSA_AREA_LOCK(area));
 if (size_class != DSA_SCLASS_BLOCK_OF_SPANS)
  dsa_free(area, span_pointer);
}
