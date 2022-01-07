
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nparts; scalar_t__* oids; int * boundinfo; } ;
struct TYPE_6__ {int parttypbyval; int parttyplen; int partnatts; } ;
typedef TYPE_1__* PartitionKey ;
typedef TYPE_2__* PartitionDesc ;


 int Assert (int) ;
 int partition_bounds_equal (int ,int ,int ,int *,int *) ;

bool
equalPartitionDescs(PartitionKey key, PartitionDesc partdesc1,
     PartitionDesc partdesc2)
{
 int i;

 if (partdesc1 != ((void*)0))
 {
  if (partdesc2 == ((void*)0))
   return 0;
  if (partdesc1->nparts != partdesc2->nparts)
   return 0;

  Assert(key != ((void*)0) || partdesc1->nparts == 0);






  for (i = 0; i < partdesc1->nparts; i++)
  {
   if (partdesc1->oids[i] != partdesc2->oids[i])
    return 0;
  }





  if (partdesc1->boundinfo != ((void*)0))
  {
   if (partdesc2->boundinfo == ((void*)0))
    return 0;

   if (!partition_bounds_equal(key->partnatts, key->parttyplen,
          key->parttypbyval,
          partdesc1->boundinfo,
          partdesc2->boundinfo))
    return 0;
  }
  else if (partdesc2->boundinfo != ((void*)0))
   return 0;
 }
 else if (partdesc2 != ((void*)0))
  return 0;

 return 1;
}
