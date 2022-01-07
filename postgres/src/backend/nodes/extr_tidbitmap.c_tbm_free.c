
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* schunks; struct TYPE_4__* spages; scalar_t__ pagetable; } ;
typedef TYPE_1__ TIDBitmap ;


 int pagetable_destroy (scalar_t__) ;
 int pfree (TYPE_1__*) ;

void
tbm_free(TIDBitmap *tbm)
{
 if (tbm->pagetable)
  pagetable_destroy(tbm->pagetable);
 if (tbm->spages)
  pfree(tbm->spages);
 if (tbm->schunks)
  pfree(tbm->schunks);
 pfree(tbm);
}
