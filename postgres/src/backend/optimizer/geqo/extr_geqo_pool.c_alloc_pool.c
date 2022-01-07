
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ string; } ;
struct TYPE_4__ {int size; int string_length; TYPE_2__* data; } ;
typedef TYPE_1__ Pool ;
typedef int PlannerInfo ;
typedef int Gene ;
typedef TYPE_2__ Chromosome ;


 scalar_t__ palloc (int) ;

Pool *
alloc_pool(PlannerInfo *root, int pool_size, int string_length)
{
 Pool *new_pool;
 Chromosome *chromo;
 int i;


 new_pool = (Pool *) palloc(sizeof(Pool));
 new_pool->size = (int) pool_size;
 new_pool->string_length = (int) string_length;


 new_pool->data = (Chromosome *) palloc(pool_size * sizeof(Chromosome));


 chromo = (Chromosome *) new_pool->data;
 for (i = 0; i < pool_size; i++)
  chromo[i].string = palloc((string_length + 1) * sizeof(Gene));

 return new_pool;
}
