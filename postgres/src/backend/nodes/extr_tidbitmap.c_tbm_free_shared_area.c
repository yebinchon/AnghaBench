
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dsa_pointer ;
typedef int dsa_area ;
struct TYPE_6__ {int refcount; } ;
struct TYPE_5__ {int refcount; } ;
struct TYPE_4__ {int schunks; int spages; int pagetable; } ;
typedef TYPE_1__ TBMSharedIteratorState ;
typedef TYPE_2__ PTIterationArray ;
typedef TYPE_3__ PTEntryArray ;


 scalar_t__ DsaPointerIsValid (int ) ;
 int dsa_free (int *,int ) ;
 void* dsa_get_address (int *,int ) ;
 scalar_t__ pg_atomic_sub_fetch_u32 (int *,int) ;

void
tbm_free_shared_area(dsa_area *dsa, dsa_pointer dp)
{
 TBMSharedIteratorState *istate = dsa_get_address(dsa, dp);
 PTEntryArray *ptbase;
 PTIterationArray *ptpages;
 PTIterationArray *ptchunks;

 if (DsaPointerIsValid(istate->pagetable))
 {
  ptbase = dsa_get_address(dsa, istate->pagetable);
  if (pg_atomic_sub_fetch_u32(&ptbase->refcount, 1) == 0)
   dsa_free(dsa, istate->pagetable);
 }
 if (DsaPointerIsValid(istate->spages))
 {
  ptpages = dsa_get_address(dsa, istate->spages);
  if (pg_atomic_sub_fetch_u32(&ptpages->refcount, 1) == 0)
   dsa_free(dsa, istate->spages);
 }
 if (DsaPointerIsValid(istate->schunks))
 {
  ptchunks = dsa_get_address(dsa, istate->schunks);
  if (pg_atomic_sub_fetch_u32(&ptchunks->refcount, 1) == 0)
   dsa_free(dsa, istate->schunks);
 }

 dsa_free(dsa, dp);
}
