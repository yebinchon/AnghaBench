
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef int TransactionId ;
typedef int TableScanDesc ;
struct TYPE_9__ {double m; } ;
struct TYPE_8__ {int randstate; } ;
typedef TYPE_1__ ReservoirStateData ;
typedef int Relation ;
typedef int HeapTuple ;
typedef TYPE_2__ BlockSamplerData ;
typedef double BlockNumber ;


 int Assert (int) ;
 scalar_t__ BlockSampler_HasMore (TYPE_2__*) ;
 int BlockSampler_Init (TYPE_2__*,double,int,int ) ;
 double BlockSampler_Next (TYPE_2__*) ;
 int ExecCopySlotHeapTuple (int *) ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int GetOldestXmin (int ,int ) ;
 int PROCARRAY_FLAGS_VACUUM ;
 double RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelationName (int ) ;
 int compare_rows ;
 int ereport (int,int ) ;
 int errmsg (char*,int ,double,double,double,double,int,double) ;
 double floor (double) ;
 int heap_freetuple (int ) ;
 int qsort (void*,int,int,int ) ;
 int random () ;
 double reservoir_get_next_S (TYPE_1__*,double,int) ;
 int reservoir_init_selection_state (TYPE_1__*,int) ;
 int sampler_random_fract (int ) ;
 int table_beginscan_analyze (int ) ;
 int table_endscan (int ) ;
 int table_scan_analyze_next_block (int ,double,int ) ;
 scalar_t__ table_scan_analyze_next_tuple (int ,int ,double*,double*,int *) ;
 int * table_slot_create (int ,int *) ;
 int vac_strategy ;
 int vacuum_delay_point () ;

__attribute__((used)) static int
acquire_sample_rows(Relation onerel, int elevel,
     HeapTuple *rows, int targrows,
     double *totalrows, double *totaldeadrows)
{
 int numrows = 0;
 double samplerows = 0;
 double liverows = 0;
 double deadrows = 0;
 double rowstoskip = -1;
 BlockNumber totalblocks;
 TransactionId OldestXmin;
 BlockSamplerData bs;
 ReservoirStateData rstate;
 TupleTableSlot *slot;
 TableScanDesc scan;

 Assert(targrows > 0);

 totalblocks = RelationGetNumberOfBlocks(onerel);


 OldestXmin = GetOldestXmin(onerel, PROCARRAY_FLAGS_VACUUM);


 BlockSampler_Init(&bs, totalblocks, targrows, random());

 reservoir_init_selection_state(&rstate, targrows);

 scan = table_beginscan_analyze(onerel);
 slot = table_slot_create(onerel, ((void*)0));


 while (BlockSampler_HasMore(&bs))
 {
  BlockNumber targblock = BlockSampler_Next(&bs);

  vacuum_delay_point();

  if (!table_scan_analyze_next_block(scan, targblock, vac_strategy))
   continue;

  while (table_scan_analyze_next_tuple(scan, OldestXmin, &liverows, &deadrows, slot))
  {
   if (numrows < targrows)
    rows[numrows++] = ExecCopySlotHeapTuple(slot);
   else
   {





    if (rowstoskip < 0)
     rowstoskip = reservoir_get_next_S(&rstate, samplerows, targrows);

    if (rowstoskip <= 0)
    {




     int k = (int) (targrows * sampler_random_fract(rstate.randstate));

     Assert(k >= 0 && k < targrows);
     heap_freetuple(rows[k]);
     rows[k] = ExecCopySlotHeapTuple(slot);
    }

    rowstoskip -= 1;
   }

   samplerows += 1;
  }
 }

 ExecDropSingleTupleTableSlot(slot);
 table_endscan(scan);
 if (numrows == targrows)
  qsort((void *) rows, numrows, sizeof(HeapTuple), compare_rows);
 if (bs.m > 0)
 {
  *totalrows = floor((liverows / bs.m) * totalblocks + 0.5);
  *totaldeadrows = floor((deadrows / bs.m) * totalblocks + 0.5);
 }
 else
 {
  *totalrows = 0.0;
  *totaldeadrows = 0.0;
 }




 ereport(elevel,
   (errmsg("\"%s\": scanned %d of %u pages, "
     "containing %.0f live rows and %.0f dead rows; "
     "%d rows in sample, %.0f estimated total rows",
     RelationGetRelationName(onerel),
     bs.m, totalblocks,
     liverows, deadrows,
     numrows, *totalrows)));

 return numrows;
}
