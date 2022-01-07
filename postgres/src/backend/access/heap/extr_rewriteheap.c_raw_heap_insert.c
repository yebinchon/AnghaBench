
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {int rd_smgr; int rd_node; TYPE_1__* rd_rel; } ;
struct TYPE_19__ {scalar_t__ t_len; int t_self; TYPE_2__* t_data; } ;
struct TYPE_18__ {int t_ctid; } ;
struct TYPE_17__ {int rs_buffer_valid; int rs_blockno; TYPE_9__* rs_new_rel; scalar_t__ rs_use_wal; scalar_t__ rs_buffer; } ;
struct TYPE_16__ {int t_ctid; } ;
struct TYPE_15__ {scalar_t__ relkind; } ;
typedef scalar_t__ Size ;
typedef TYPE_3__* RewriteState ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef int Item ;
typedef TYPE_4__* HeapTupleHeader ;
typedef TYPE_5__* HeapTuple ;


 int Assert (int) ;
 int BLCKSZ ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int HEAP_DEFAULT_FILLFACTOR ;
 int HEAP_INSERT_NO_LOGICAL ;
 int HEAP_INSERT_SKIP_FSM ;
 int HEAP_INSERT_SKIP_WAL ;
 scalar_t__ HeapTupleHasExternal (TYPE_5__*) ;
 scalar_t__ InvalidOffsetNumber ;
 int ItemPointerIsValid (int *) ;
 int ItemPointerSet (int *,int ,scalar_t__) ;
 int MAIN_FORKNUM ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 scalar_t__ MaxHeapTupleSize ;
 scalar_t__ PageAddItem (scalar_t__,int ,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ PageGetHeapFreeSpace (scalar_t__) ;
 scalar_t__ PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,scalar_t__) ;
 int PageInit (scalar_t__,int ,int ) ;
 int PageSetChecksumInplace (scalar_t__,int ) ;
 scalar_t__ RELKIND_TOASTVALUE ;
 scalar_t__ RelationGetTargetPageFreeSpace (TYPE_9__*,int ) ;
 int RelationOpenSmgr (TYPE_9__*) ;
 scalar_t__ TOAST_TUPLE_THRESHOLD ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__,scalar_t__) ;
 int heap_freetuple (TYPE_5__*) ;
 TYPE_5__* heap_toast_insert_or_update (TYPE_9__*,TYPE_5__*,int *,int) ;
 int log_newpage (int *,int ,int ,scalar_t__,int) ;
 int smgrextend (int ,int ,int ,char*,int) ;

__attribute__((used)) static void
raw_heap_insert(RewriteState state, HeapTuple tup)
{
 Page page = state->rs_buffer;
 Size pageFreeSpace,
    saveFreeSpace;
 Size len;
 OffsetNumber newoff;
 HeapTuple heaptup;
 if (state->rs_new_rel->rd_rel->relkind == RELKIND_TOASTVALUE)
 {

  Assert(!HeapTupleHasExternal(tup));
  heaptup = tup;
 }
 else if (HeapTupleHasExternal(tup) || tup->t_len > TOAST_TUPLE_THRESHOLD)
 {
  int options = HEAP_INSERT_SKIP_FSM;

  if (!state->rs_use_wal)
   options |= HEAP_INSERT_SKIP_WAL;






  options |= HEAP_INSERT_NO_LOGICAL;

  heaptup = heap_toast_insert_or_update(state->rs_new_rel, tup, ((void*)0),
             options);
 }
 else
  heaptup = tup;

 len = MAXALIGN(heaptup->t_len);




 if (len > MaxHeapTupleSize)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("row is too big: size %zu, maximum size %zu",
      len, MaxHeapTupleSize)));


 saveFreeSpace = RelationGetTargetPageFreeSpace(state->rs_new_rel,
               HEAP_DEFAULT_FILLFACTOR);


 if (state->rs_buffer_valid)
 {
  pageFreeSpace = PageGetHeapFreeSpace(page);

  if (len + saveFreeSpace > pageFreeSpace)
  {



   if (state->rs_use_wal)
    log_newpage(&state->rs_new_rel->rd_node,
       MAIN_FORKNUM,
       state->rs_blockno,
       page,
       1);






   RelationOpenSmgr(state->rs_new_rel);

   PageSetChecksumInplace(page, state->rs_blockno);

   smgrextend(state->rs_new_rel->rd_smgr, MAIN_FORKNUM,
        state->rs_blockno, (char *) page, 1);

   state->rs_blockno++;
   state->rs_buffer_valid = 0;
  }
 }

 if (!state->rs_buffer_valid)
 {

  PageInit(page, BLCKSZ, 0);
  state->rs_buffer_valid = 1;
 }


 newoff = PageAddItem(page, (Item) heaptup->t_data, heaptup->t_len,
       InvalidOffsetNumber, 0, 1);
 if (newoff == InvalidOffsetNumber)
  elog(ERROR, "failed to add tuple");


 ItemPointerSet(&(tup->t_self), state->rs_blockno, newoff);





 if (!ItemPointerIsValid(&tup->t_data->t_ctid))
 {
  ItemId newitemid;
  HeapTupleHeader onpage_tup;

  newitemid = PageGetItemId(page, newoff);
  onpage_tup = (HeapTupleHeader) PageGetItem(page, newitemid);

  onpage_tup->t_ctid = tup->t_self;
 }


 if (heaptup != tup)
  heap_freetuple(heaptup);
}
