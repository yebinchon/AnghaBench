
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hash_ctl ;
typedef int TransactionId ;
struct TYPE_8__ {int name; } ;
struct TYPE_11__ {TYPE_1__ data; } ;
struct TYPE_10__ {int keysize; int entrysize; int hcxt; } ;
struct TYPE_9__ {int txns_by_base_snapshot_lsn; int toplevel_by_lsn; int current_restart_decoding_lsn; scalar_t__ outbufsize; int * outbuf; int * by_txn_last_txn; int by_txn_last_xid; int by_txn; int context; int tup_context; void* txn_context; void* change_context; } ;
typedef int ReorderBufferTXNByIdEnt ;
typedef int ReorderBufferTXN ;
typedef int ReorderBufferChange ;
typedef TYPE_2__ ReorderBuffer ;
typedef int MemoryContext ;
typedef TYPE_3__ HASHCTL ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int ) ;
 int CurrentMemoryContext ;
 int GenerationContextCreate (int ,char*,int ) ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int InvalidTransactionId ;
 int InvalidXLogRecPtr ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 TYPE_7__* MyReplicationSlot ;
 int NameStr (int ) ;
 int ReorderBufferCleanupSerializedTXNs (int ) ;
 int SLAB_DEFAULT_BLOCK_SIZE ;
 int SLAB_LARGE_BLOCK_SIZE ;
 void* SlabContextCreate (int ,char*,int ,int) ;
 int dlist_init (int *) ;
 int hash_create (char*,int,TYPE_3__*,int) ;
 int memset (TYPE_3__*,int ,int) ;

ReorderBuffer *
ReorderBufferAllocate(void)
{
 ReorderBuffer *buffer;
 HASHCTL hash_ctl;
 MemoryContext new_ctx;

 Assert(MyReplicationSlot != ((void*)0));


 new_ctx = AllocSetContextCreate(CurrentMemoryContext,
         "ReorderBuffer",
         ALLOCSET_DEFAULT_SIZES);

 buffer =
  (ReorderBuffer *) MemoryContextAlloc(new_ctx, sizeof(ReorderBuffer));

 memset(&hash_ctl, 0, sizeof(hash_ctl));

 buffer->context = new_ctx;

 buffer->change_context = SlabContextCreate(new_ctx,
              "Change",
              SLAB_DEFAULT_BLOCK_SIZE,
              sizeof(ReorderBufferChange));

 buffer->txn_context = SlabContextCreate(new_ctx,
           "TXN",
           SLAB_DEFAULT_BLOCK_SIZE,
           sizeof(ReorderBufferTXN));

 buffer->tup_context = GenerationContextCreate(new_ctx,
              "Tuples",
              SLAB_LARGE_BLOCK_SIZE);

 hash_ctl.keysize = sizeof(TransactionId);
 hash_ctl.entrysize = sizeof(ReorderBufferTXNByIdEnt);
 hash_ctl.hcxt = buffer->context;

 buffer->by_txn = hash_create("ReorderBufferByXid", 1000, &hash_ctl,
         HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

 buffer->by_txn_last_xid = InvalidTransactionId;
 buffer->by_txn_last_txn = ((void*)0);

 buffer->outbuf = ((void*)0);
 buffer->outbufsize = 0;

 buffer->current_restart_decoding_lsn = InvalidXLogRecPtr;

 dlist_init(&buffer->toplevel_by_lsn);
 dlist_init(&buffer->txns_by_base_snapshot_lsn);






 ReorderBufferCleanupSerializedTXNs(NameStr(MyReplicationSlot->data.name));

 return buffer;
}
