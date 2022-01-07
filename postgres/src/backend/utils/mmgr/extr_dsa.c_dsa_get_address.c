
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t dsa_segment_index ;
typedef int dsa_pointer ;
struct TYPE_7__ {TYPE_1__* segment_maps; } ;
typedef TYPE_2__ dsa_area ;
struct TYPE_6__ {void* mapped_address; } ;


 int Assert (int) ;
 size_t DSA_EXTRACT_OFFSET (int ) ;
 size_t DSA_EXTRACT_SEGMENT_NUMBER (int ) ;
 size_t DSA_MAX_SEGMENTS ;
 int DsaPointerIsValid (int ) ;
 int check_for_freed_segments (TYPE_2__*) ;
 int get_segment_by_index (TYPE_2__*,size_t) ;
 scalar_t__ unlikely (int ) ;

void *
dsa_get_address(dsa_area *area, dsa_pointer dp)
{
 dsa_segment_index index;
 size_t offset;


 if (!DsaPointerIsValid(dp))
  return ((void*)0);


 check_for_freed_segments(area);


 index = DSA_EXTRACT_SEGMENT_NUMBER(dp);
 offset = DSA_EXTRACT_OFFSET(dp);
 Assert(index < DSA_MAX_SEGMENTS);


 if (unlikely(area->segment_maps[index].mapped_address == ((void*)0)))
 {

  get_segment_by_index(area, index);
 }

 return area->segment_maps[index].mapped_address + offset;
}
