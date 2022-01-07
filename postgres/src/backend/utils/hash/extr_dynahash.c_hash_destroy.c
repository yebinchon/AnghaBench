
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ alloc; int * hcxt; } ;
typedef TYPE_1__ HTAB ;


 int Assert (int) ;
 scalar_t__ DynaHashAlloc ;
 int MemoryContextDelete (int *) ;
 int hash_stats (char*,TYPE_1__*) ;

void
hash_destroy(HTAB *hashp)
{
 if (hashp != ((void*)0))
 {

  Assert(hashp->alloc == DynaHashAlloc);

  Assert(hashp->hcxt != ((void*)0));

  hash_stats("destroy", hashp);




  MemoryContextDelete(hashp->hcxt);
 }
}
