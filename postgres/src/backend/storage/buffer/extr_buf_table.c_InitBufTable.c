
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keysize; int entrysize; int num_partitions; } ;
typedef TYPE_1__ HASHCTL ;
typedef int BufferTag ;
typedef int BufferLookupEnt ;


 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_PARTITION ;
 int NUM_BUFFER_PARTITIONS ;
 int SharedBufHash ;
 int ShmemInitHash (char*,int,int,TYPE_1__*,int) ;

void
InitBufTable(int size)
{
 HASHCTL info;




 info.keysize = sizeof(BufferTag);
 info.entrysize = sizeof(BufferLookupEnt);
 info.num_partitions = NUM_BUFFER_PARTITIONS;

 SharedBufHash = ShmemInitHash("Shared Buffer Lookup Table",
          size, size,
          &info,
          HASH_ELEM | HASH_BLOBS | HASH_PARTITION);
}
