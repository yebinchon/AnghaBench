
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* UnresolvedTup ;
struct TYPE_16__ {int rd_smgr; int rd_node; } ;
struct TYPE_15__ {TYPE_1__* t_data; } ;
struct TYPE_14__ {int rs_cxt; TYPE_7__* rs_new_rel; scalar_t__ rs_buffer; int rs_blockno; scalar_t__ rs_use_wal; scalar_t__ rs_buffer_valid; int rs_unresolved_tups; } ;
struct TYPE_13__ {TYPE_5__* tuple; } ;
struct TYPE_12__ {int t_ctid; } ;
typedef TYPE_3__* RewriteState ;
typedef int HASH_SEQ_STATUS ;


 int ItemPointerSetInvalid (int *) ;
 int MAIN_FORKNUM ;
 int MemoryContextDelete (int ) ;
 int PageSetChecksumInplace (scalar_t__,int ) ;
 scalar_t__ RelationNeedsWAL (TYPE_7__*) ;
 int RelationOpenSmgr (TYPE_7__*) ;
 int hash_seq_init (int *,int ) ;
 TYPE_2__* hash_seq_search (int *) ;
 int heap_sync (TYPE_7__*) ;
 int log_newpage (int *,int ,int ,scalar_t__,int) ;
 int logical_end_heap_rewrite (TYPE_3__*) ;
 int raw_heap_insert (TYPE_3__*,TYPE_5__*) ;
 int smgrextend (int ,int ,int ,char*,int) ;

void
end_heap_rewrite(RewriteState state)
{
 HASH_SEQ_STATUS seq_status;
 UnresolvedTup unresolved;





 hash_seq_init(&seq_status, state->rs_unresolved_tups);

 while ((unresolved = hash_seq_search(&seq_status)) != ((void*)0))
 {
  ItemPointerSetInvalid(&unresolved->tuple->t_data->t_ctid);
  raw_heap_insert(state, unresolved->tuple);
 }


 if (state->rs_buffer_valid)
 {
  if (state->rs_use_wal)
   log_newpage(&state->rs_new_rel->rd_node,
      MAIN_FORKNUM,
      state->rs_blockno,
      state->rs_buffer,
      1);
  RelationOpenSmgr(state->rs_new_rel);

  PageSetChecksumInplace(state->rs_buffer, state->rs_blockno);

  smgrextend(state->rs_new_rel->rd_smgr, MAIN_FORKNUM, state->rs_blockno,
       (char *) state->rs_buffer, 1);
 }
 if (RelationNeedsWAL(state->rs_new_rel))
  heap_sync(state->rs_new_rel);

 logical_end_heap_rewrite(state);


 MemoryContextDelete(state->rs_cxt);
}
