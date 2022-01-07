
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int info ;
struct TYPE_8__ {int mutex; } ;
struct TYPE_7__ {int keysize; int entrysize; void* num_partitions; int hash; } ;
typedef int PROCLOCKTAG ;
typedef int PROCLOCK ;
typedef int LOCKTAG ;
typedef int LOCK ;
typedef int LOCALLOCKTAG ;
typedef int LOCALLOCK ;
typedef TYPE_1__ HASHCTL ;
typedef int FastPathStrongRelationLockData ;


 TYPE_3__* FastPathStrongRelationLocks ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_FUNCTION ;
 int HASH_PARTITION ;
 scalar_t__ LockMethodLocalHash ;
 void* LockMethodLockHash ;
 void* LockMethodProcLockHash ;
 int MemSet (TYPE_1__*,int ,int) ;
 long NLOCKENTS () ;
 void* NUM_LOCK_PARTITIONS ;
 void* ShmemInitHash (char*,long,long,TYPE_1__*,int) ;
 TYPE_3__* ShmemInitStruct (char*,int,int*) ;
 int SpinLockInit (int *) ;
 scalar_t__ hash_create (char*,int,TYPE_1__*,int) ;
 int hash_destroy (scalar_t__) ;
 int proclock_hash ;

void
InitLocks(void)
{
 HASHCTL info;
 long init_table_size,
    max_table_size;
 bool found;





 max_table_size = NLOCKENTS();
 init_table_size = max_table_size / 2;





 MemSet(&info, 0, sizeof(info));
 info.keysize = sizeof(LOCKTAG);
 info.entrysize = sizeof(LOCK);
 info.num_partitions = NUM_LOCK_PARTITIONS;

 LockMethodLockHash = ShmemInitHash("LOCK hash",
            init_table_size,
            max_table_size,
            &info,
            HASH_ELEM | HASH_BLOBS | HASH_PARTITION);


 max_table_size *= 2;
 init_table_size *= 2;





 info.keysize = sizeof(PROCLOCKTAG);
 info.entrysize = sizeof(PROCLOCK);
 info.hash = proclock_hash;
 info.num_partitions = NUM_LOCK_PARTITIONS;

 LockMethodProcLockHash = ShmemInitHash("PROCLOCK hash",
             init_table_size,
             max_table_size,
             &info,
             HASH_ELEM | HASH_FUNCTION | HASH_PARTITION);




 FastPathStrongRelationLocks =
  ShmemInitStruct("Fast Path Strong Relation Lock Data",
      sizeof(FastPathStrongRelationLockData), &found);
 if (!found)
  SpinLockInit(&FastPathStrongRelationLocks->mutex);
 if (LockMethodLocalHash)
  hash_destroy(LockMethodLocalHash);

 info.keysize = sizeof(LOCALLOCKTAG);
 info.entrysize = sizeof(LOCALLOCK);

 LockMethodLocalHash = hash_create("LOCALLOCK hash",
           16,
           &info,
           HASH_ELEM | HASH_BLOBS);
}
