
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* string; } ;
typedef int PlannerInfo ;
typedef TYPE_1__ Chromosome ;


 int pfree (TYPE_1__*) ;

void
free_chromo(PlannerInfo *root, Chromosome *chromo)
{
 pfree(chromo->string);
 pfree(chromo);
}
