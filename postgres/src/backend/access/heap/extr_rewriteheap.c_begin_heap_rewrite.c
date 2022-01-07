
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hash_ctl ;
typedef int UnresolvedTupData ;
typedef void* TransactionId ;
typedef int TidHashKey ;
struct TYPE_9__ {int keysize; int entrysize; int hcxt; } ;
struct TYPE_8__ {int rs_buffer_valid; int rs_use_wal; void* rs_old_new_tid_map; void* rs_unresolved_tups; int rs_cxt; int rs_cutoff_multi; void* rs_freeze_xid; void* rs_oldest_xmin; int rs_blockno; scalar_t__ rs_buffer; void* rs_new_rel; void* rs_old_rel; } ;
typedef int RewriteStateData ;
typedef TYPE_1__* RewriteState ;
typedef void* Relation ;
typedef scalar_t__ Page ;
typedef int OldToNewMappingData ;
typedef int MultiXactId ;
typedef int MemoryContext ;
typedef TYPE_2__ HASHCTL ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int BLCKSZ ;
 int CurrentMemoryContext ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int MemoryContextSwitchTo (int ) ;
 int RelationGetNumberOfBlocks (void*) ;
 void* hash_create (char*,int,TYPE_2__*,int) ;
 int logical_begin_heap_rewrite (TYPE_1__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ palloc (int ) ;
 TYPE_1__* palloc0 (int) ;

RewriteState
begin_heap_rewrite(Relation old_heap, Relation new_heap, TransactionId oldest_xmin,
       TransactionId freeze_xid, MultiXactId cutoff_multi,
       bool use_wal)
{
 RewriteState state;
 MemoryContext rw_cxt;
 MemoryContext old_cxt;
 HASHCTL hash_ctl;





 rw_cxt = AllocSetContextCreate(CurrentMemoryContext,
           "Table rewrite",
           ALLOCSET_DEFAULT_SIZES);
 old_cxt = MemoryContextSwitchTo(rw_cxt);


 state = palloc0(sizeof(RewriteStateData));

 state->rs_old_rel = old_heap;
 state->rs_new_rel = new_heap;
 state->rs_buffer = (Page) palloc(BLCKSZ);

 state->rs_blockno = RelationGetNumberOfBlocks(new_heap);
 state->rs_buffer_valid = 0;
 state->rs_use_wal = use_wal;
 state->rs_oldest_xmin = oldest_xmin;
 state->rs_freeze_xid = freeze_xid;
 state->rs_cutoff_multi = cutoff_multi;
 state->rs_cxt = rw_cxt;


 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(TidHashKey);
 hash_ctl.entrysize = sizeof(UnresolvedTupData);
 hash_ctl.hcxt = state->rs_cxt;

 state->rs_unresolved_tups =
  hash_create("Rewrite / Unresolved ctids",
     128,
     &hash_ctl,
     HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

 hash_ctl.entrysize = sizeof(OldToNewMappingData);

 state->rs_old_new_tid_map =
  hash_create("Rewrite / Old to new tid map",
     128,
     &hash_ctl,
     HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

 MemoryContextSwitchTo(old_cxt);

 logical_begin_heap_rewrite(state);

 return state;
}
