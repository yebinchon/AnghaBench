
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * string; } ;
typedef int PlannerInfo ;
typedef int Gene ;
typedef TYPE_1__ Chromosome ;


 scalar_t__ palloc (int) ;

Chromosome *
alloc_chromo(PlannerInfo *root, int string_length)
{
 Chromosome *chromo;

 chromo = (Chromosome *) palloc(sizeof(Chromosome));
 chromo->string = (Gene *) palloc((string_length + 1) * sizeof(Gene));

 return chromo;
}
