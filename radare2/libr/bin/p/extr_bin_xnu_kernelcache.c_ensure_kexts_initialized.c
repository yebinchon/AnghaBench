
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kexts_initialized; int kexts; } ;
typedef int RList ;
typedef TYPE_1__ RKernelCacheObj ;


 int * carve_kexts (TYPE_1__*) ;
 int * filter_kexts (TYPE_1__*) ;
 int r_kext_index_new (int *) ;
 int r_list_free (int *) ;
 int r_list_length (int *) ;

__attribute__((used)) static void ensure_kexts_initialized(RKernelCacheObj *obj) {
 if (obj->kexts_initialized) {
  return;
 }
 obj->kexts_initialized = 1;

 RList *kexts = filter_kexts (obj);

 if (kexts && !r_list_length (kexts)) {
  r_list_free (kexts);
  kexts = ((void*)0);
 }

 if (!kexts) {
  kexts = carve_kexts (obj);
 }

 obj->kexts = r_kext_index_new (kexts);
}
