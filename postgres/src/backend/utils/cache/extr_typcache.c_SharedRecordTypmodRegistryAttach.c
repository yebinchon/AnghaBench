
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dshash_table ;
struct TYPE_6__ {int * shared_typmod_table; int * shared_record_table; TYPE_1__* shared_typmod_registry; int * segment; int * area; } ;
struct TYPE_5__ {int typmod_table_handle; int record_table_handle; } ;
typedef TYPE_1__ SharedRecordTypmodRegistry ;
typedef int MemoryContext ;


 int Assert (int) ;
 TYPE_4__* CurrentSession ;
 int IsParallelWorker () ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ NextRecordTypmod ;
 int PointerGetDatum (TYPE_1__*) ;
 int TopMemoryContext ;
 int * dshash_attach (int *,int *,int ,int *) ;
 int on_dsm_detach (int *,int ,int ) ;
 int shared_record_typmod_registry_detach ;
 int srtr_record_table_params ;
 int srtr_typmod_table_params ;

void
SharedRecordTypmodRegistryAttach(SharedRecordTypmodRegistry *registry)
{
 MemoryContext old_context;
 dshash_table *record_table;
 dshash_table *typmod_table;

 Assert(IsParallelWorker());


 Assert(CurrentSession != ((void*)0));
 Assert(CurrentSession->segment != ((void*)0));
 Assert(CurrentSession->area != ((void*)0));
 Assert(CurrentSession->shared_typmod_registry == ((void*)0));
 Assert(CurrentSession->shared_record_table == ((void*)0));
 Assert(CurrentSession->shared_typmod_table == ((void*)0));
 Assert(NextRecordTypmod == 0);

 old_context = MemoryContextSwitchTo(TopMemoryContext);


 record_table = dshash_attach(CurrentSession->area,
         &srtr_record_table_params,
         registry->record_table_handle,
         CurrentSession->area);
 typmod_table = dshash_attach(CurrentSession->area,
         &srtr_typmod_table_params,
         registry->typmod_table_handle,
         ((void*)0));

 MemoryContextSwitchTo(old_context);






 on_dsm_detach(CurrentSession->segment,
      shared_record_typmod_registry_detach,
      PointerGetDatum(registry));





 CurrentSession->shared_typmod_registry = registry;
 CurrentSession->shared_record_table = record_table;
 CurrentSession->shared_typmod_table = typmod_table;
}
