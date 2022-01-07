
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef int TupleDesc ;
struct TYPE_10__ {TYPE_3__* newtuple; } ;
struct TYPE_11__ {TYPE_1__ tp; } ;
struct TYPE_15__ {int node; TYPE_2__ data; } ;
struct TYPE_14__ {int * toast_hash; } ;
struct TYPE_13__ {scalar_t__ chunk_id; scalar_t__ last_chunk_seq; scalar_t__ size; int chunks; scalar_t__ num_chunks; int * reconstructed; } ;
struct TYPE_12__ {int tuple; } ;
typedef TYPE_3__ ReorderBufferTupleBuf ;
typedef TYPE_4__ ReorderBufferToastEnt ;
typedef TYPE_5__ ReorderBufferTXN ;
typedef TYPE_6__ ReorderBufferChange ;
typedef int ReorderBuffer ;
typedef int Relation ;
typedef int Pointer ;
typedef scalar_t__ Oid ;


 int Assert (int) ;
 scalar_t__ DatumGetInt32 (int ) ;
 scalar_t__ DatumGetObjectId (int ) ;
 int DatumGetPointer (int ) ;
 int ERROR ;
 int HASH_ENTER ;
 int IsToastRelation (int ) ;
 int RelationGetDescr (int ) ;
 int ReorderBufferToastInitHash (int *,TYPE_5__*) ;
 int VARATT_IS_EXTENDED (int ) ;
 scalar_t__ VARATT_IS_SHORT (int ) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARHDRSZ_SHORT ;
 scalar_t__ VARSIZE (int ) ;
 scalar_t__ VARSIZE_SHORT (int ) ;
 int dlist_init (int *) ;
 int dlist_push_tail (int *,int *) ;
 int elog (int ,char*,...) ;
 int fastgetattr (int *,int,int ,int*) ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;

__attribute__((used)) static void
ReorderBufferToastAppendChunk(ReorderBuffer *rb, ReorderBufferTXN *txn,
         Relation relation, ReorderBufferChange *change)
{
 ReorderBufferToastEnt *ent;
 ReorderBufferTupleBuf *newtup;
 bool found;
 int32 chunksize;
 bool isnull;
 Pointer chunk;
 TupleDesc desc = RelationGetDescr(relation);
 Oid chunk_id;
 int32 chunk_seq;

 if (txn->toast_hash == ((void*)0))
  ReorderBufferToastInitHash(rb, txn);

 Assert(IsToastRelation(relation));

 newtup = change->data.tp.newtuple;
 chunk_id = DatumGetObjectId(fastgetattr(&newtup->tuple, 1, desc, &isnull));
 Assert(!isnull);
 chunk_seq = DatumGetInt32(fastgetattr(&newtup->tuple, 2, desc, &isnull));
 Assert(!isnull);

 ent = (ReorderBufferToastEnt *)
  hash_search(txn->toast_hash,
     (void *) &chunk_id,
     HASH_ENTER,
     &found);

 if (!found)
 {
  Assert(ent->chunk_id == chunk_id);
  ent->num_chunks = 0;
  ent->last_chunk_seq = 0;
  ent->size = 0;
  ent->reconstructed = ((void*)0);
  dlist_init(&ent->chunks);

  if (chunk_seq != 0)
   elog(ERROR, "got sequence entry %d for toast chunk %u instead of seq 0",
     chunk_seq, chunk_id);
 }
 else if (found && chunk_seq != ent->last_chunk_seq + 1)
  elog(ERROR, "got sequence entry %d for toast chunk %u instead of seq %d",
    chunk_seq, chunk_id, ent->last_chunk_seq + 1);

 chunk = DatumGetPointer(fastgetattr(&newtup->tuple, 3, desc, &isnull));
 Assert(!isnull);


 if (!VARATT_IS_EXTENDED(chunk))
  chunksize = VARSIZE(chunk) - VARHDRSZ;
 else if (VARATT_IS_SHORT(chunk))

  chunksize = VARSIZE_SHORT(chunk) - VARHDRSZ_SHORT;
 else
  elog(ERROR, "unexpected type of toast chunk");

 ent->size += chunksize;
 ent->last_chunk_seq = chunk_seq;
 ent->num_chunks++;
 dlist_push_tail(&ent->chunks, &change->node);
}
