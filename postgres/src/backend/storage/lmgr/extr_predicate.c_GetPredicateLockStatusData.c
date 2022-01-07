
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * myXact; TYPE_1__* myTarget; } ;
struct TYPE_9__ {TYPE_2__ tag; } ;
struct TYPE_8__ {int nelements; int * xacts; int * locktags; } ;
struct TYPE_6__ {int tag; } ;
typedef int SERIALIZABLEXACT ;
typedef TYPE_3__ PredicateLockData ;
typedef int PREDICATELOCKTARGETTAG ;
typedef TYPE_4__ PREDICATELOCK ;
typedef int HASH_SEQ_STATUS ;


 int Assert (int) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int NUM_PREDICATELOCK_PARTITIONS ;
 int PredicateLockHash ;
 int PredicateLockHashPartitionLockByIndex (int) ;
 int SerializableXactHashLock ;
 int hash_get_num_entries (int ) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 scalar_t__ palloc (int) ;

PredicateLockData *
GetPredicateLockStatusData(void)
{
 PredicateLockData *data;
 int i;
 int els,
    el;
 HASH_SEQ_STATUS seqstat;
 PREDICATELOCK *predlock;

 data = (PredicateLockData *) palloc(sizeof(PredicateLockData));





 for (i = 0; i < NUM_PREDICATELOCK_PARTITIONS; i++)
  LWLockAcquire(PredicateLockHashPartitionLockByIndex(i), LW_SHARED);
 LWLockAcquire(SerializableXactHashLock, LW_SHARED);


 els = hash_get_num_entries(PredicateLockHash);
 data->nelements = els;
 data->locktags = (PREDICATELOCKTARGETTAG *)
  palloc(sizeof(PREDICATELOCKTARGETTAG) * els);
 data->xacts = (SERIALIZABLEXACT *)
  palloc(sizeof(SERIALIZABLEXACT) * els);



 hash_seq_init(&seqstat, PredicateLockHash);

 el = 0;

 while ((predlock = (PREDICATELOCK *) hash_seq_search(&seqstat)))
 {
  data->locktags[el] = predlock->tag.myTarget->tag;
  data->xacts[el] = *predlock->tag.myXact;
  el++;
 }

 Assert(el == els);


 LWLockRelease(SerializableXactHashLock);
 for (i = NUM_PREDICATELOCK_PARTITIONS - 1; i >= 0; i--)
  LWLockRelease(PredicateLockHashPartitionLockByIndex(i));

 return data;
}
