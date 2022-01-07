
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ctx; scalar_t__ private_data; } ;
typedef TYPE_1__ pagetable_hash ;
struct TYPE_8__ {void* ptentry; } ;
struct TYPE_7__ {int dsapagetable; int * dsa; int dsapagetableold; } ;
typedef TYPE_2__ TIDBitmap ;
typedef scalar_t__ Size ;
typedef TYPE_3__ PTEntryArray ;


 int DSA_ALLOC_HUGE ;
 int DSA_ALLOC_ZERO ;
 int MCXT_ALLOC_HUGE ;
 int MCXT_ALLOC_ZERO ;
 void* MemoryContextAllocExtended (int ,scalar_t__,int) ;
 int dsa_allocate_extended (int *,scalar_t__,int) ;
 TYPE_3__* dsa_get_address (int *,int ) ;

__attribute__((used)) static inline void *
pagetable_allocate(pagetable_hash *pagetable, Size size)
{
 TIDBitmap *tbm = (TIDBitmap *) pagetable->private_data;
 PTEntryArray *ptbase;

 if (tbm->dsa == ((void*)0))
  return MemoryContextAllocExtended(pagetable->ctx, size,
            MCXT_ALLOC_HUGE | MCXT_ALLOC_ZERO);





 tbm->dsapagetableold = tbm->dsapagetable;
 tbm->dsapagetable = dsa_allocate_extended(tbm->dsa,
             sizeof(PTEntryArray) + size,
             DSA_ALLOC_HUGE | DSA_ALLOC_ZERO);
 ptbase = dsa_get_address(tbm->dsa, tbm->dsapagetable);

 return ptbase->ptentry;
}
