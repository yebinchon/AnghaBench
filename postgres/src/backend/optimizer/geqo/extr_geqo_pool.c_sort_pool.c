
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int data; } ;
typedef TYPE_1__ Pool ;
typedef int PlannerInfo ;
typedef int Chromosome ;


 int compare ;
 int qsort (int ,int ,int,int ) ;

void
sort_pool(PlannerInfo *root, Pool *pool)
{
 qsort(pool->data, pool->size, sizeof(Chromosome), compare);
}
