
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nsessions; TYPE_1__** sessions; } ;
typedef TYPE_2__ TestSpec ;
struct TYPE_5__ {size_t nsteps; int ** steps; } ;
typedef int Step ;


 size_t* piles ;
 int run_permutation (TYPE_2__*,int,int **) ;

__attribute__((used)) static void
run_all_permutations_recurse(TestSpec *testspec, int nsteps, Step **steps)
{
 int i;
 int found = 0;

 for (i = 0; i < testspec->nsessions; i++)
 {

  if (piles[i] < testspec->sessions[i]->nsteps)
  {
   steps[nsteps] = testspec->sessions[i]->steps[piles[i]];
   piles[i]++;

   run_all_permutations_recurse(testspec, nsteps + 1, steps);

   piles[i]--;

   found = 1;
  }
 }


 if (!found)
  run_permutation(testspec, nsteps, steps);
}
