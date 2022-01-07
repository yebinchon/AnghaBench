
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ private_data; } ;
typedef TYPE_1__ pagetable_hash ;
struct TYPE_5__ {int dsapagetableold; int * dsa; } ;
typedef TYPE_2__ TIDBitmap ;


 scalar_t__ DsaPointerIsValid (int ) ;
 int InvalidDsaPointer ;
 int dsa_free (int *,int ) ;
 int pfree (void*) ;

__attribute__((used)) static inline void
pagetable_free(pagetable_hash *pagetable, void *pointer)
{
 TIDBitmap *tbm = (TIDBitmap *) pagetable->private_data;


 if (tbm->dsa == ((void*)0))
  pfree(pointer);
 else if (DsaPointerIsValid(tbm->dsapagetableold))
 {
  dsa_free(tbm->dsa, tbm->dsapagetableold);
  tbm->dsapagetableold = InvalidDsaPointer;
 }
}
