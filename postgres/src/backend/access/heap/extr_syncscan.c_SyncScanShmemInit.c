
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* items; TYPE_4__* tail; TYPE_4__* head; } ;
typedef TYPE_3__ ss_scan_locations_t ;
struct TYPE_6__ {void* relNode; void* dbNode; void* spcNode; } ;
struct TYPE_7__ {int location; TYPE_1__ relfilenode; } ;
struct TYPE_9__ {struct TYPE_9__* next; struct TYPE_9__* prev; TYPE_2__ location; } ;
typedef TYPE_4__ ss_lru_item_t ;


 int Assert (int) ;
 int InvalidBlockNumber ;
 void* InvalidOid ;
 int IsUnderPostmaster ;
 int SYNC_SCAN_NELEM ;
 scalar_t__ ShmemInitStruct (char*,int ,int*) ;
 int SizeOfScanLocations (int) ;
 TYPE_3__* scan_locations ;

void
SyncScanShmemInit(void)
{
 int i;
 bool found;

 scan_locations = (ss_scan_locations_t *)
  ShmemInitStruct("Sync Scan Locations List",
      SizeOfScanLocations(SYNC_SCAN_NELEM),
      &found);

 if (!IsUnderPostmaster)
 {

  Assert(!found);

  scan_locations->head = &scan_locations->items[0];
  scan_locations->tail = &scan_locations->items[SYNC_SCAN_NELEM - 1];

  for (i = 0; i < SYNC_SCAN_NELEM; i++)
  {
   ss_lru_item_t *item = &scan_locations->items[i];






   item->location.relfilenode.spcNode = InvalidOid;
   item->location.relfilenode.dbNode = InvalidOid;
   item->location.relfilenode.relNode = InvalidOid;
   item->location.location = InvalidBlockNumber;

   item->prev = (i > 0) ?
    (&scan_locations->items[i - 1]) : ((void*)0);
   item->next = (i < SYNC_SCAN_NELEM - 1) ?
    (&scan_locations->items[i + 1]) : ((void*)0);
  }
 }
 else
  Assert(found);
}
