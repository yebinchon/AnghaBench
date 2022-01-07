
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entrysize; int keysize; } ;
typedef int ShmemIndexEnt ;
typedef TYPE_1__ HASHCTL ;


 int HASH_ELEM ;
 int SHMEM_INDEX_KEYSIZE ;
 int SHMEM_INDEX_SIZE ;
 int ShmemIndex ;
 int ShmemInitHash (char*,int ,int ,TYPE_1__*,int) ;

void
InitShmemIndex(void)
{
 HASHCTL info;
 int hash_flags;
 info.keysize = SHMEM_INDEX_KEYSIZE;
 info.entrysize = sizeof(ShmemIndexEnt);
 hash_flags = HASH_ELEM;

 ShmemIndex = ShmemInitHash("ShmemIndex",
          SHMEM_INDEX_SIZE, SHMEM_INDEX_SIZE,
          &info, hash_flags);
}
