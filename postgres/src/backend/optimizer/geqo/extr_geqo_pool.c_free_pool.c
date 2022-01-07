
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* string; } ;
struct TYPE_5__ {int size; struct TYPE_5__* data; } ;
typedef TYPE_1__ Pool ;
typedef int PlannerInfo ;
typedef TYPE_2__ Chromosome ;


 int pfree (TYPE_1__*) ;

void
free_pool(PlannerInfo *root, Pool *pool)
{
 Chromosome *chromo;
 int i;


 chromo = (Chromosome *) pool->data;
 for (i = 0; i < pool->size; i++)
  pfree(chromo[i].string);


 pfree(pool->data);


 pfree(pool);
}
