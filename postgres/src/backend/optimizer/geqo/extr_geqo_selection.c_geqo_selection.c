
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int string_length; int * data; } ;
typedef TYPE_1__ Pool ;
typedef int PlannerInfo ;
typedef int Chromosome ;


 int geqo_copy (int *,int *,int *,int ) ;
 int linear_rand (int *,int,double) ;

void
geqo_selection(PlannerInfo *root, Chromosome *momma, Chromosome *daddy,
      Pool *pool, double bias)
{
 int first,
    second;

 first = linear_rand(root, pool->size, bias);
 second = linear_rand(root, pool->size, bias);
 if (pool->size > 1)
 {
  while (first == second)
   second = linear_rand(root, pool->size, bias);
 }

 geqo_copy(root, momma, &pool->data[first], pool->string_length);
 geqo_copy(root, daddy, &pool->data[second], pool->string_length);
}
