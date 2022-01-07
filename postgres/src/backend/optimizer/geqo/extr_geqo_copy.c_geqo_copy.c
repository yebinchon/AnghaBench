
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int worth; int * string; } ;
typedef int PlannerInfo ;
typedef TYPE_1__ Chromosome ;



void
geqo_copy(PlannerInfo *root, Chromosome *chromo1, Chromosome *chromo2,
    int string_length)
{
 int i;

 for (i = 0; i < string_length; i++)
  chromo1->string[i] = chromo2->string[i];

 chromo1->worth = chromo2->worth;
}
