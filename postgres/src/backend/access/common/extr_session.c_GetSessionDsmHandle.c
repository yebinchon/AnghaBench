
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int shm_toc_estimator ;
typedef int shm_toc ;
typedef int dsm_segment ;
typedef int dsm_handle ;
typedef int dsa_area ;
struct TYPE_2__ {int * area; int * segment; } ;
typedef int SharedRecordTypmodRegistry ;
typedef int MemoryContext ;


 TYPE_1__* CurrentSession ;
 int DSM_CREATE_NULL_IF_MAXSEGMENTS ;
 int DSM_HANDLE_INVALID ;
 int LWTRANCHE_SESSION_DSA ;
 int MemoryContextSwitchTo (int ) ;
 size_t SESSION_DSA_SIZE ;
 int SESSION_KEY_DSA ;
 int SESSION_KEY_RECORD_TYPMOD_REGISTRY ;
 int SESSION_MAGIC ;
 size_t SharedRecordTypmodRegistryEstimate () ;
 int SharedRecordTypmodRegistryInit (int *,int *,int *) ;
 int TopMemoryContext ;
 int * dsa_create_in_place (void*,size_t,int ,int *) ;
 int dsa_pin_mapping (int *) ;
 int * dsm_create (size_t,int ) ;
 int dsm_pin_mapping (int *) ;
 int dsm_segment_address (int *) ;
 int dsm_segment_handle (int *) ;
 void* shm_toc_allocate (int *,size_t) ;
 int * shm_toc_create (int ,int ,size_t) ;
 size_t shm_toc_estimate (int *) ;
 int shm_toc_estimate_chunk (int *,size_t) ;
 int shm_toc_estimate_keys (int *,int) ;
 int shm_toc_initialize_estimator (int *) ;
 int shm_toc_insert (int *,int ,void*) ;

dsm_handle
GetSessionDsmHandle(void)
{
 shm_toc_estimator estimator;
 shm_toc *toc;
 dsm_segment *seg;
 size_t typmod_registry_size;
 size_t size;
 void *dsa_space;
 void *typmod_registry_space;
 dsa_area *dsa;
 MemoryContext old_context;






 if (CurrentSession->segment != ((void*)0))
  return dsm_segment_handle(CurrentSession->segment);


 old_context = MemoryContextSwitchTo(TopMemoryContext);
 shm_toc_initialize_estimator(&estimator);


 shm_toc_estimate_keys(&estimator, 1);
 shm_toc_estimate_chunk(&estimator, SESSION_DSA_SIZE);


 typmod_registry_size = SharedRecordTypmodRegistryEstimate();
 shm_toc_estimate_keys(&estimator, 1);
 shm_toc_estimate_chunk(&estimator, typmod_registry_size);


 size = shm_toc_estimate(&estimator);
 seg = dsm_create(size, DSM_CREATE_NULL_IF_MAXSEGMENTS);
 if (seg == ((void*)0))
 {
  MemoryContextSwitchTo(old_context);

  return DSM_HANDLE_INVALID;
 }
 toc = shm_toc_create(SESSION_MAGIC,
       dsm_segment_address(seg),
       size);


 dsa_space = shm_toc_allocate(toc, SESSION_DSA_SIZE);
 dsa = dsa_create_in_place(dsa_space,
         SESSION_DSA_SIZE,
         LWTRANCHE_SESSION_DSA,
         seg);
 shm_toc_insert(toc, SESSION_KEY_DSA, dsa_space);



 typmod_registry_space = shm_toc_allocate(toc, typmod_registry_size);
 SharedRecordTypmodRegistryInit((SharedRecordTypmodRegistry *)
           typmod_registry_space, seg, dsa);
 shm_toc_insert(toc, SESSION_KEY_RECORD_TYPMOD_REGISTRY,
       typmod_registry_space);
 dsm_pin_mapping(seg);
 dsa_pin_mapping(dsa);


 CurrentSession->segment = seg;
 CurrentSession->area = dsa;

 MemoryContextSwitchTo(old_context);

 return dsm_segment_handle(seg);
}
