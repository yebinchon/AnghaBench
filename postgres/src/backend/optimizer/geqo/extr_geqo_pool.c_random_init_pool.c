
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int string; } ;
struct TYPE_6__ {int size; TYPE_1__* data; int string_length; } ;
struct TYPE_5__ {scalar_t__ worth; } ;
typedef TYPE_2__ Pool ;
typedef int PlannerInfo ;
typedef TYPE_3__ Chromosome ;


 scalar_t__ DBL_MAX ;
 int DEBUG1 ;
 int ERROR ;
 int elog (int ,char*,...) ;
 scalar_t__ geqo_eval (int *,int ,int ) ;
 int init_tour (int *,int ,int ) ;

void
random_init_pool(PlannerInfo *root, Pool *pool)
{
 Chromosome *chromo = (Chromosome *) pool->data;
 int i;
 int bad = 0;
 i = 0;
 while (i < pool->size)
 {
  init_tour(root, chromo[i].string, pool->string_length);
  pool->data[i].worth = geqo_eval(root, chromo[i].string,
          pool->string_length);
  if (pool->data[i].worth < DBL_MAX)
   i++;
  else
  {
   bad++;
   if (i == 0 && bad >= 10000)
    elog(ERROR, "geqo failed to make a valid plan");
  }
 }






}
