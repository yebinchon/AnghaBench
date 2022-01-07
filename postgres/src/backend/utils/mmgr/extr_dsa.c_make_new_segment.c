
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int dsm_segment ;
struct TYPE_11__ {TYPE_3__* header; int * fpm; scalar_t__ mapped_address; int * pagemap; int * segment; } ;
typedef TYPE_2__ dsa_segment_map ;
typedef size_t dsa_segment_index ;
struct TYPE_12__ {size_t magic; size_t usable_pages; size_t size; size_t bin; size_t prev; size_t next; int freed; } ;
typedef TYPE_3__ dsa_segment_header ;
typedef int dsa_pointer ;
struct TYPE_13__ {size_t high_segment_index; TYPE_1__* control; TYPE_2__* segment_maps; scalar_t__ mapping_pinned; } ;
typedef TYPE_4__ dsa_area ;
struct TYPE_10__ {scalar_t__* segment_handles; scalar_t__ total_segment_size; scalar_t__ max_total_segment_size; size_t high_segment_index; size_t handle; size_t* segment_bins; } ;
typedef int FreePageManager ;


 int Assert (int) ;
 int DSA_AREA_LOCK (TYPE_4__*) ;
 size_t DSA_INITIAL_SEGMENT_SIZE ;
 size_t DSA_MAX_SEGMENTS ;
 size_t DSA_MAX_SEGMENT_SIZE ;
 size_t DSA_NUM_SEGMENTS_AT_EACH_SIZE ;
 size_t DSA_SEGMENT_HEADER_MAGIC ;
 size_t DSA_SEGMENT_INDEX_NONE ;
 scalar_t__ DSM_HANDLE_INVALID ;
 size_t FPM_PAGE_SIZE ;
 int FreePageManagerInitialize (int *,scalar_t__) ;
 int FreePageManagerPut (int *,size_t,size_t) ;
 int LWLockHeldByMe (int ) ;
 size_t MAXALIGN (int) ;
 size_t Min (size_t,size_t) ;
 size_t contiguous_pages_to_segment_bin (size_t) ;
 int * dsm_create (size_t,int ) ;
 int dsm_pin_mapping (int *) ;
 int dsm_pin_segment (int *) ;
 scalar_t__ dsm_segment_address (int *) ;
 scalar_t__ dsm_segment_handle (int *) ;
 TYPE_2__* get_segment_by_index (TYPE_4__*,size_t) ;

__attribute__((used)) static dsa_segment_map *
make_new_segment(dsa_area *area, size_t requested_pages)
{
 dsa_segment_index new_index;
 size_t metadata_bytes;
 size_t total_size;
 size_t total_pages;
 size_t usable_pages;
 dsa_segment_map *segment_map;
 dsm_segment *segment;

 Assert(LWLockHeldByMe(DSA_AREA_LOCK(area)));


 for (new_index = 1; new_index < DSA_MAX_SEGMENTS; ++new_index)
 {
  if (area->control->segment_handles[new_index] == DSM_HANDLE_INVALID)
   break;
 }
 if (new_index == DSA_MAX_SEGMENTS)
  return ((void*)0);





 if (area->control->total_segment_size >=
  area->control->max_total_segment_size)
  return ((void*)0);
 total_size = DSA_INITIAL_SEGMENT_SIZE *
  ((size_t) 1 << (new_index / DSA_NUM_SEGMENTS_AT_EACH_SIZE));
 total_size = Min(total_size, DSA_MAX_SEGMENT_SIZE);
 total_size = Min(total_size,
      area->control->max_total_segment_size -
      area->control->total_segment_size);

 total_pages = total_size / FPM_PAGE_SIZE;
 metadata_bytes =
  MAXALIGN(sizeof(dsa_segment_header)) +
  MAXALIGN(sizeof(FreePageManager)) +
  sizeof(dsa_pointer) * total_pages;


 if (metadata_bytes % FPM_PAGE_SIZE != 0)
  metadata_bytes += FPM_PAGE_SIZE - (metadata_bytes % FPM_PAGE_SIZE);
 if (total_size <= metadata_bytes)
  return ((void*)0);
 usable_pages = (total_size - metadata_bytes) / FPM_PAGE_SIZE;
 Assert(metadata_bytes + usable_pages * FPM_PAGE_SIZE <= total_size);


 if (requested_pages > usable_pages)
 {




  usable_pages = requested_pages;
  metadata_bytes =
   MAXALIGN(sizeof(dsa_segment_header)) +
   MAXALIGN(sizeof(FreePageManager)) +
   usable_pages * sizeof(dsa_pointer);


  if (metadata_bytes % FPM_PAGE_SIZE != 0)
   metadata_bytes += FPM_PAGE_SIZE - (metadata_bytes % FPM_PAGE_SIZE);
  total_size = metadata_bytes + usable_pages * FPM_PAGE_SIZE;


  if (total_size > DSA_MAX_SEGMENT_SIZE)
   return ((void*)0);


  if (total_size > area->control->max_total_segment_size -
   area->control->total_segment_size)
   return ((void*)0);
 }


 segment = dsm_create(total_size, 0);
 if (segment == ((void*)0))
  return ((void*)0);
 dsm_pin_segment(segment);
 if (area->mapping_pinned)
  dsm_pin_mapping(segment);


 area->control->segment_handles[new_index] =
  dsm_segment_handle(segment);

 if (area->control->high_segment_index < new_index)
  area->control->high_segment_index = new_index;

 if (area->high_segment_index < new_index)
  area->high_segment_index = new_index;

 area->control->total_segment_size += total_size;
 Assert(area->control->total_segment_size <=
     area->control->max_total_segment_size);


 segment_map = &area->segment_maps[new_index];
 segment_map->segment = segment;
 segment_map->mapped_address = dsm_segment_address(segment);
 segment_map->header = (dsa_segment_header *) segment_map->mapped_address;
 segment_map->fpm = (FreePageManager *)
  (segment_map->mapped_address +
   MAXALIGN(sizeof(dsa_segment_header)));
 segment_map->pagemap = (dsa_pointer *)
  (segment_map->mapped_address +
   MAXALIGN(sizeof(dsa_segment_header)) +
   MAXALIGN(sizeof(FreePageManager)));


 FreePageManagerInitialize(segment_map->fpm, segment_map->mapped_address);
 FreePageManagerPut(segment_map->fpm, metadata_bytes / FPM_PAGE_SIZE,
        usable_pages);


 segment_map->header->magic =
  DSA_SEGMENT_HEADER_MAGIC ^ area->control->handle ^ new_index;
 segment_map->header->usable_pages = usable_pages;
 segment_map->header->size = total_size;
 segment_map->header->bin = contiguous_pages_to_segment_bin(usable_pages);
 segment_map->header->prev = DSA_SEGMENT_INDEX_NONE;
 segment_map->header->next =
  area->control->segment_bins[segment_map->header->bin];
 segment_map->header->freed = 0;
 area->control->segment_bins[segment_map->header->bin] = new_index;
 if (segment_map->header->next != DSA_SEGMENT_INDEX_NONE)
 {
  dsa_segment_map *next =
  get_segment_by_index(area, segment_map->header->next);

  Assert(next->header->bin == segment_map->header->bin);
  next->header->prev = new_index;
 }

 return segment_map;
}
