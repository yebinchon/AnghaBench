
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* freeList; } ;
struct TYPE_6__ {TYPE_4__* hctl; } ;
struct TYPE_5__ {long nentries; } ;
typedef TYPE_2__ HTAB ;


 scalar_t__ IS_PARTITIONED (TYPE_4__*) ;
 int NUM_FREELISTS ;

long
hash_get_num_entries(HTAB *hashp)
{
 int i;
 long sum = hashp->hctl->freeList[0].nentries;






 if (IS_PARTITIONED(hashp->hctl))
 {
  for (i = 1; i < NUM_FREELISTS; i++)
   sum += hashp->hctl->freeList[i].nentries;
 }

 return sum;
}
