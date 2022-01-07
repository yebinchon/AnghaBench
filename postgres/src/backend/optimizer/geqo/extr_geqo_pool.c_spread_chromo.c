
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ worth; int string; } ;
struct TYPE_8__ {scalar_t__ worth; int string; } ;
struct TYPE_7__ {int size; TYPE_5__* data; int string_length; } ;
typedef TYPE_1__ Pool ;
typedef int PlannerInfo ;
typedef TYPE_2__ Chromosome ;


 int geqo_copy (int *,TYPE_5__*,TYPE_2__*,int ) ;

void
spread_chromo(PlannerInfo *root, Chromosome *chromo, Pool *pool)
{
 int top,
    mid,
    bot;
 int i,
    index;
 Chromosome swap_chromo,
    tmp_chromo;


 if (chromo->worth > pool->data[pool->size - 1].worth)
  return;



 top = 0;
 mid = pool->size / 2;
 bot = pool->size - 1;
 index = -1;

 while (index == -1)
 {


  if (chromo->worth <= pool->data[top].worth)
   index = top;
  else if (chromo->worth == pool->data[mid].worth)
   index = mid;
  else if (chromo->worth == pool->data[bot].worth)
   index = bot;
  else if (bot - top <= 1)
   index = bot;







  else if (chromo->worth < pool->data[mid].worth)
  {
   bot = mid;
   mid = top + ((bot - top) / 2);
  }
  else
  {
   top = mid;
   mid = top + ((bot - top) / 2);
  }
 }
 geqo_copy(root, &pool->data[pool->size - 1], chromo, pool->string_length);

 swap_chromo.string = pool->data[pool->size - 1].string;
 swap_chromo.worth = pool->data[pool->size - 1].worth;

 for (i = index; i < pool->size; i++)
 {
  tmp_chromo.string = pool->data[i].string;
  tmp_chromo.worth = pool->data[i].worth;

  pool->data[i].string = swap_chromo.string;
  pool->data[i].worth = swap_chromo.worth;

  swap_chromo.string = tmp_chromo.string;
  swap_chromo.worth = tmp_chromo.worth;
 }
}
