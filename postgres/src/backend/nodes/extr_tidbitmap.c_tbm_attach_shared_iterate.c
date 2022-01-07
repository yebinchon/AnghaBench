
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dsa_pointer ;
typedef int dsa_area ;
struct TYPE_5__ {void* ptchunks; void* ptpages; void* ptbase; TYPE_1__* state; } ;
struct TYPE_4__ {int schunks; scalar_t__ nchunks; int spages; scalar_t__ npages; int pagetable; } ;
typedef TYPE_1__ TBMSharedIteratorState ;
typedef TYPE_2__ TBMSharedIterator ;
typedef int OffsetNumber ;


 int MAX_TUPLES_PER_PAGE ;
 void* dsa_get_address (int *,int ) ;
 scalar_t__ palloc0 (int) ;

TBMSharedIterator *
tbm_attach_shared_iterate(dsa_area *dsa, dsa_pointer dp)
{
 TBMSharedIterator *iterator;
 TBMSharedIteratorState *istate;





 iterator = (TBMSharedIterator *) palloc0(sizeof(TBMSharedIterator) +
            MAX_TUPLES_PER_PAGE * sizeof(OffsetNumber));

 istate = (TBMSharedIteratorState *) dsa_get_address(dsa, dp);

 iterator->state = istate;

 iterator->ptbase = dsa_get_address(dsa, istate->pagetable);

 if (istate->npages)
  iterator->ptpages = dsa_get_address(dsa, istate->spages);
 if (istate->nchunks)
  iterator->ptchunks = dsa_get_address(dsa, istate->schunks);

 return iterator;
}
