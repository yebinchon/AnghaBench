
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


typedef size_t int32 ;
typedef int dsm_segment ;
typedef int dshash_table ;
typedef void* dsa_pointer ;
typedef int dsa_area ;
typedef TYPE_4__* TupleDesc ;
struct TYPE_17__ {TYPE_4__* local_tupdesc; } ;
struct TYPE_23__ {int shared; TYPE_1__ u; } ;
struct TYPE_22__ {int next_typmod; void* typmod_table_handle; void* record_table_handle; } ;
struct TYPE_18__ {void* shared_tupdesc; } ;
struct TYPE_19__ {int shared; TYPE_2__ u; } ;
struct TYPE_21__ {TYPE_3__ key; void* shared_tupdesc; TYPE_7__ typmod; } ;
struct TYPE_20__ {TYPE_7__ tdtypmod; } ;
struct TYPE_16__ {TYPE_6__* shared_typmod_registry; int * shared_typmod_table; int * shared_record_table; } ;
typedef TYPE_5__ SharedTypmodTableEntry ;
typedef TYPE_6__ SharedRecordTypmodRegistry ;
typedef TYPE_7__ SharedRecordTableKey ;
typedef TYPE_5__ SharedRecordTableEntry ;
typedef int MemoryContext ;
typedef int Datum ;


 int Assert (int) ;
 TYPE_15__* CurrentSession ;
 int ERROR ;
 int IsParallelWorker () ;
 int MemoryContextSwitchTo (int ) ;
 size_t NextRecordTypmod ;
 TYPE_4__** RecordCacheArray ;
 int TopMemoryContext ;
 int * dshash_create (int *,int *,int *) ;
 TYPE_5__* dshash_find_or_insert (int *,TYPE_7__*,int*) ;
 void* dshash_get_hash_table_handle (int *) ;
 int dshash_release_lock (int *,TYPE_5__*) ;
 int elog (int ,char*) ;
 int on_dsm_detach (int *,int ,int ) ;
 int pg_atomic_init_u32 (int *,size_t) ;
 void* share_tupledesc (int *,TYPE_4__*,size_t) ;
 int shared_record_typmod_registry_detach ;
 int srtr_record_table_params ;
 int srtr_typmod_table_params ;

void
SharedRecordTypmodRegistryInit(SharedRecordTypmodRegistry *registry,
          dsm_segment *segment,
          dsa_area *area)
{
 MemoryContext old_context;
 dshash_table *record_table;
 dshash_table *typmod_table;
 int32 typmod;

 Assert(!IsParallelWorker());


 Assert(CurrentSession->shared_typmod_registry == ((void*)0));
 Assert(CurrentSession->shared_record_table == ((void*)0));
 Assert(CurrentSession->shared_typmod_table == ((void*)0));

 old_context = MemoryContextSwitchTo(TopMemoryContext);


 record_table = dshash_create(area, &srtr_record_table_params, area);


 typmod_table = dshash_create(area, &srtr_typmod_table_params, ((void*)0));

 MemoryContextSwitchTo(old_context);


 registry->record_table_handle = dshash_get_hash_table_handle(record_table);
 registry->typmod_table_handle = dshash_get_hash_table_handle(typmod_table);
 pg_atomic_init_u32(&registry->next_typmod, NextRecordTypmod);





 for (typmod = 0; typmod < NextRecordTypmod; ++typmod)
 {
  SharedTypmodTableEntry *typmod_table_entry;
  SharedRecordTableEntry *record_table_entry;
  SharedRecordTableKey record_table_key;
  dsa_pointer shared_dp;
  TupleDesc tupdesc;
  bool found;

  tupdesc = RecordCacheArray[typmod];
  if (tupdesc == ((void*)0))
   continue;


  shared_dp = share_tupledesc(area, tupdesc, typmod);


  typmod_table_entry = dshash_find_or_insert(typmod_table,
               &tupdesc->tdtypmod,
               &found);
  if (found)
   elog(ERROR, "cannot create duplicate shared record typmod");
  typmod_table_entry->typmod = tupdesc->tdtypmod;
  typmod_table_entry->shared_tupdesc = shared_dp;
  dshash_release_lock(typmod_table, typmod_table_entry);


  record_table_key.shared = 0;
  record_table_key.u.local_tupdesc = tupdesc;
  record_table_entry = dshash_find_or_insert(record_table,
               &record_table_key,
               &found);
  if (!found)
  {
   record_table_entry->key.shared = 1;
   record_table_entry->key.u.shared_tupdesc = shared_dp;
  }
  dshash_release_lock(record_table, record_table_entry);
 }





 CurrentSession->shared_record_table = record_table;
 CurrentSession->shared_typmod_table = typmod_table;
 CurrentSession->shared_typmod_registry = registry;







 on_dsm_detach(segment, shared_record_typmod_registry_detach, (Datum) 0);
}
