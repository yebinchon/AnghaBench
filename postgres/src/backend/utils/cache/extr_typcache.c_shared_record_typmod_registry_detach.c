
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dsm_segment ;
struct TYPE_2__ {int * shared_typmod_registry; int * shared_typmod_table; int * shared_record_table; } ;
typedef int Datum ;


 TYPE_1__* CurrentSession ;
 int dshash_detach (int *) ;

__attribute__((used)) static void
shared_record_typmod_registry_detach(dsm_segment *segment, Datum datum)
{

 if (CurrentSession->shared_record_table != ((void*)0))
 {
  dshash_detach(CurrentSession->shared_record_table);
  CurrentSession->shared_record_table = ((void*)0);
 }
 if (CurrentSession->shared_typmod_table != ((void*)0))
 {
  dshash_detach(CurrentSession->shared_typmod_table);
  CurrentSession->shared_typmod_table = ((void*)0);
 }
 CurrentSession->shared_typmod_registry = ((void*)0);
}
