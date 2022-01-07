
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int key ;
struct TYPE_8__ {int t_tableOid; int t_self; } ;
struct TYPE_7__ {int cmax; int cmin; } ;
struct TYPE_6__ {int tid; int relnode; } ;
typedef int Snapshot ;
typedef TYPE_1__ ReorderBufferTupleCidKey ;
typedef TYPE_2__ ReorderBufferTupleCidEnt ;
typedef TYPE_3__* HeapTuple ;
typedef int HTAB ;
typedef scalar_t__ ForkNumber ;
typedef int CommandId ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BufferGetTag (int ,int *,scalar_t__*,scalar_t__*) ;
 int BufferIsLocal (int ) ;
 int HASH_FIND ;
 int ItemPointerCopy (int *,int *) ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 scalar_t__ MAIN_FORKNUM ;
 int UpdateLogicalMappings (int *,int ,int ) ;
 scalar_t__ hash_search (int *,void*,int ,int *) ;
 int memset (TYPE_1__*,int ,int) ;

bool
ResolveCminCmaxDuringDecoding(HTAB *tuplecid_data,
         Snapshot snapshot,
         HeapTuple htup, Buffer buffer,
         CommandId *cmin, CommandId *cmax)
{
 ReorderBufferTupleCidKey key;
 ReorderBufferTupleCidEnt *ent;
 ForkNumber forkno;
 BlockNumber blockno;
 bool updated_mapping = 0;


 memset(&key, 0, sizeof(key));

 Assert(!BufferIsLocal(buffer));





 BufferGetTag(buffer, &key.relnode, &forkno, &blockno);


 Assert(forkno == MAIN_FORKNUM);
 Assert(blockno == ItemPointerGetBlockNumber(&htup->t_self));

 ItemPointerCopy(&htup->t_self,
     &key.tid);

restart:
 ent = (ReorderBufferTupleCidEnt *)
  hash_search(tuplecid_data,
     (void *) &key,
     HASH_FIND,
     ((void*)0));







 if (ent == ((void*)0) && !updated_mapping)
 {
  UpdateLogicalMappings(tuplecid_data, htup->t_tableOid, snapshot);

  updated_mapping = 1;
  goto restart;
 }
 else if (ent == ((void*)0))
  return 0;

 if (cmin)
  *cmin = ent->cmin;
 if (cmax)
  *cmax = ent->cmax;
 return 1;
}
