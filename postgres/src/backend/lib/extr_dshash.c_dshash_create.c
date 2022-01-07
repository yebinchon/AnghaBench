
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int dshash_table_control ;
struct TYPE_11__ {int tranche_id; } ;
struct TYPE_9__ {int find_locked; int find_exclusively_locked; TYPE_1__* control; int size_log2; void* buckets; void* arg; TYPE_4__ params; int * area; } ;
typedef TYPE_2__ dshash_table ;
struct TYPE_10__ {scalar_t__ count; int lock; } ;
typedef TYPE_3__ dshash_partition ;
typedef TYPE_4__ dshash_parameters ;
typedef int dsa_pointer ;
typedef int dsa_area ;
struct TYPE_8__ {int lwlock_tranche_id; int size_log2; int buckets; TYPE_3__* partitions; int magic; int handle; } ;


 int DSA_ALLOC_NO_OOM ;
 int DSA_ALLOC_ZERO ;
 int DSHASH_MAGIC ;
 int DSHASH_NUM_PARTITIONS ;
 int DSHASH_NUM_PARTITIONS_LOG2 ;
 int DsaPointerIsValid (int ) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int LWLockInitialize (int *,int) ;
 int dsa_allocate (int *,int) ;
 int dsa_allocate_extended (int *,int,int) ;
 int dsa_free (int *,int ) ;
 void* dsa_get_address (int *,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int) ;
 int errmsg (char*) ;
 TYPE_2__* palloc (int) ;

dshash_table *
dshash_create(dsa_area *area, const dshash_parameters *params, void *arg)
{
 dshash_table *hash_table;
 dsa_pointer control;


 hash_table = palloc(sizeof(dshash_table));


 control = dsa_allocate(area, sizeof(dshash_table_control));


 hash_table->area = area;
 hash_table->params = *params;
 hash_table->arg = arg;
 hash_table->control = dsa_get_address(area, control);
 hash_table->control->handle = control;
 hash_table->control->magic = DSHASH_MAGIC;
 hash_table->control->lwlock_tranche_id = params->tranche_id;


 {
  dshash_partition *partitions = hash_table->control->partitions;
  int tranche_id = hash_table->control->lwlock_tranche_id;
  int i;

  for (i = 0; i < DSHASH_NUM_PARTITIONS; ++i)
  {
   LWLockInitialize(&partitions[i].lock, tranche_id);
   partitions[i].count = 0;
  }
 }

 hash_table->find_locked = 0;
 hash_table->find_exclusively_locked = 0;





 hash_table->control->size_log2 = DSHASH_NUM_PARTITIONS_LOG2;
 hash_table->control->buckets =
  dsa_allocate_extended(area,
         sizeof(dsa_pointer) * DSHASH_NUM_PARTITIONS,
         DSA_ALLOC_NO_OOM | DSA_ALLOC_ZERO);
 if (!DsaPointerIsValid(hash_table->control->buckets))
 {
  dsa_free(area, control);
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory"),
     errdetail("Failed on DSA request of size %zu.",
         sizeof(dsa_pointer) * DSHASH_NUM_PARTITIONS)));
 }
 hash_table->buckets = dsa_get_address(area,
            hash_table->control->buckets);
 hash_table->size_log2 = hash_table->control->size_log2;

 return hash_table;
}
