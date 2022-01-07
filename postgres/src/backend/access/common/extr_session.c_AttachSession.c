
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int shm_toc ;
typedef int dsm_segment ;
typedef int dsm_handle ;
typedef int dsa_area ;
struct TYPE_2__ {int * area; int * segment; } ;
typedef int SharedRecordTypmodRegistry ;
typedef int MemoryContext ;


 TYPE_1__* CurrentSession ;
 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 int SESSION_KEY_DSA ;
 int SESSION_KEY_RECORD_TYPMOD_REGISTRY ;
 int SESSION_MAGIC ;
 int SharedRecordTypmodRegistryAttach (int *) ;
 int TopMemoryContext ;
 int * dsa_attach_in_place (void*,int *) ;
 int dsa_pin_mapping (int *) ;
 int * dsm_attach (int ) ;
 int dsm_pin_mapping (int *) ;
 int dsm_segment_address (int *) ;
 int elog (int ,char*) ;
 int * shm_toc_attach (int ,int ) ;
 void* shm_toc_lookup (int *,int ,int) ;

void
AttachSession(dsm_handle handle)
{
 dsm_segment *seg;
 shm_toc *toc;
 void *dsa_space;
 void *typmod_registry_space;
 dsa_area *dsa;
 MemoryContext old_context;

 old_context = MemoryContextSwitchTo(TopMemoryContext);


 seg = dsm_attach(handle);
 if (seg == ((void*)0))
  elog(ERROR, "could not attach to per-session DSM segment");
 toc = shm_toc_attach(SESSION_MAGIC, dsm_segment_address(seg));


 dsa_space = shm_toc_lookup(toc, SESSION_KEY_DSA, 0);
 dsa = dsa_attach_in_place(dsa_space, seg);


 CurrentSession->segment = seg;
 CurrentSession->area = dsa;


 typmod_registry_space =
  shm_toc_lookup(toc, SESSION_KEY_RECORD_TYPMOD_REGISTRY, 0);
 SharedRecordTypmodRegistryAttach((SharedRecordTypmodRegistry *)
          typmod_registry_space);


 dsm_pin_mapping(seg);
 dsa_pin_mapping(dsa);

 MemoryContextSwitchTo(old_context);
}
