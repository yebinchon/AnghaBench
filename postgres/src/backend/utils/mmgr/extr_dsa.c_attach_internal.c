
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int dsm_segment ;
struct TYPE_10__ {void* mapped_address; int * pagemap; int * fpm; int * header; int * segment; } ;
typedef TYPE_2__ dsa_segment_map ;
typedef int dsa_segment_header ;
typedef int dsa_pointer ;
typedef int dsa_handle ;
struct TYPE_9__ {int magic; } ;
struct TYPE_11__ {int handle; int* segment_handles; scalar_t__ refcnt; int freed_segment_counter; TYPE_1__ segment_header; } ;
typedef TYPE_3__ dsa_area_control ;
struct TYPE_12__ {int mapping_pinned; TYPE_3__* control; int freed_segment_counter; TYPE_2__* segment_maps; scalar_t__ high_segment_index; } ;
typedef TYPE_4__ dsa_area ;
typedef int FreePageManager ;


 int Assert (int) ;
 int DSA_AREA_LOCK (TYPE_4__*) ;
 int DSA_MAX_SEGMENTS ;
 int DSA_SEGMENT_HEADER_MAGIC ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MAXALIGN (int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_4__* palloc (int) ;

__attribute__((used)) static dsa_area *
attach_internal(void *place, dsm_segment *segment, dsa_handle handle)
{
 dsa_area_control *control;
 dsa_area *area;
 dsa_segment_map *segment_map;

 control = (dsa_area_control *) place;
 Assert(control->handle == handle);
 Assert(control->segment_handles[0] == handle);
 Assert(control->segment_header.magic ==
     (DSA_SEGMENT_HEADER_MAGIC ^ handle ^ 0));


 area = palloc(sizeof(dsa_area));
 area->control = control;
 area->mapping_pinned = 0;
 memset(&area->segment_maps[0], 0,
     sizeof(dsa_segment_map) * DSA_MAX_SEGMENTS);
 area->high_segment_index = 0;


 segment_map = &area->segment_maps[0];
 segment_map->segment = segment;
 segment_map->mapped_address = place;
 segment_map->header = (dsa_segment_header *) segment_map->mapped_address;
 segment_map->fpm = (FreePageManager *)
  (segment_map->mapped_address + MAXALIGN(sizeof(dsa_area_control)));
 segment_map->pagemap = (dsa_pointer *)
  (segment_map->mapped_address + MAXALIGN(sizeof(dsa_area_control)) +
   MAXALIGN(sizeof(FreePageManager)));


 LWLockAcquire(DSA_AREA_LOCK(area), LW_EXCLUSIVE);
 if (control->refcnt == 0)
 {

  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("could not attach to dynamic shared area")));
 }
 ++control->refcnt;
 area->freed_segment_counter = area->control->freed_segment_counter;
 LWLockRelease(DSA_AREA_LOCK(area));

 return area;
}
