
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nsessions; TYPE_1__** sessions; } ;
typedef TYPE_2__ TestSpec ;
struct TYPE_5__ {scalar_t__ nsteps; } ;
typedef int Step ;


 void* pg_malloc (int) ;
 scalar_t__* piles ;
 int run_all_permutations_recurse (TYPE_2__*,int ,int **) ;

__attribute__((used)) static void
run_all_permutations(TestSpec *testspec)
{
 int nsteps;
 int i;
 Step **steps;


 nsteps = 0;
 for (i = 0; i < testspec->nsessions; i++)
  nsteps += testspec->sessions[i]->nsteps;

 steps = pg_malloc(sizeof(Step *) * nsteps);
 piles = pg_malloc(sizeof(int) * testspec->nsessions);
 for (i = 0; i < testspec->nsessions; i++)
  piles[i] = 0;

 run_all_permutations_recurse(testspec, 0, steps);
}
