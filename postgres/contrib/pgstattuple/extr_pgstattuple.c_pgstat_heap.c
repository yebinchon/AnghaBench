
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_14__ {int table_len; int free_space; int dead_tuple_count; int dead_tuple_len; int tuple_count; int tuple_len; int member_0; } ;
typedef TYPE_2__ pgstattuple_type ;
typedef scalar_t__ TableScanDesc ;
struct TYPE_17__ {scalar_t__ rs_nblocks; int rs_strategy; int rs_cbuf; } ;
struct TYPE_16__ {int t_self; scalar_t__ t_len; } ;
struct TYPE_15__ {TYPE_1__* rd_rel; } ;
struct TYPE_13__ {scalar_t__ relam; } ;
typedef int SnapshotData ;
typedef TYPE_3__* Relation ;
typedef int Page ;
typedef TYPE_4__* HeapTuple ;
typedef TYPE_5__* HeapScanDesc ;
typedef int FunctionCallInfo ;
typedef int Datum ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int AccessShareLock ;
 int BLCKSZ ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetPage (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ForwardScanDirection ;
 scalar_t__ HEAP_TABLE_AM_OID ;
 scalar_t__ HeapTupleSatisfiesVisibility (TYPE_4__*,int *,int ) ;
 int InitDirtySnapshot (int ) ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 scalar_t__ PageGetHeapFreeSpace (int ) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (TYPE_3__*,int ,scalar_t__,int ,int ) ;
 int SnapshotAny ;
 int UnlockReleaseBuffer (int ) ;
 int build_pgstattuple_type (TYPE_2__*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 TYPE_4__* heap_getnext (scalar_t__,int ) ;
 int relation_close (TYPE_3__*,int ) ;
 scalar_t__ table_beginscan_strat (TYPE_3__*,int ,int ,int *,int,int) ;
 int table_endscan (scalar_t__) ;

__attribute__((used)) static Datum
pgstat_heap(Relation rel, FunctionCallInfo fcinfo)
{
 TableScanDesc scan;
 HeapScanDesc hscan;
 HeapTuple tuple;
 BlockNumber nblocks;
 BlockNumber block = 0;
 BlockNumber tupblock;
 Buffer buffer;
 pgstattuple_type stat = {0};
 SnapshotData SnapshotDirty;

 if (rel->rd_rel->relam != HEAP_TABLE_AM_OID)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("only heap AM is supported")));


 scan = table_beginscan_strat(rel, SnapshotAny, 0, ((void*)0), 1, 0);
 hscan = (HeapScanDesc) scan;

 InitDirtySnapshot(SnapshotDirty);

 nblocks = hscan->rs_nblocks;


 while ((tuple = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  CHECK_FOR_INTERRUPTS();


  LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_SHARE);

  if (HeapTupleSatisfiesVisibility(tuple, &SnapshotDirty, hscan->rs_cbuf))
  {
   stat.tuple_len += tuple->t_len;
   stat.tuple_count++;
  }
  else
  {
   stat.dead_tuple_len += tuple->t_len;
   stat.dead_tuple_count++;
  }

  LockBuffer(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);







  tupblock = ItemPointerGetBlockNumber(&tuple->t_self);

  while (block <= tupblock)
  {
   CHECK_FOR_INTERRUPTS();

   buffer = ReadBufferExtended(rel, MAIN_FORKNUM, block,
          RBM_NORMAL, hscan->rs_strategy);
   LockBuffer(buffer, BUFFER_LOCK_SHARE);
   stat.free_space += PageGetHeapFreeSpace((Page) BufferGetPage(buffer));
   UnlockReleaseBuffer(buffer);
   block++;
  }
 }

 while (block < nblocks)
 {
  CHECK_FOR_INTERRUPTS();

  buffer = ReadBufferExtended(rel, MAIN_FORKNUM, block,
         RBM_NORMAL, hscan->rs_strategy);
  LockBuffer(buffer, BUFFER_LOCK_SHARE);
  stat.free_space += PageGetHeapFreeSpace((Page) BufferGetPage(buffer));
  UnlockReleaseBuffer(buffer);
  block++;
 }

 table_endscan(scan);
 relation_close(rel, AccessShareLock);

 stat.table_len = (uint64) nblocks * BLCKSZ;

 return build_pgstattuple_type(&stat, fcinfo);
}
