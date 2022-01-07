
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int npermutations; int nallsteps; int allsteps; TYPE_2__** permutations; } ;
typedef TYPE_1__ TestSpec ;
struct TYPE_6__ {int nsteps; char** stepnames; } ;
typedef int Step ;
typedef TYPE_2__ Permutation ;


 scalar_t__ bsearch (char*,int ,int ,int,int *) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int free (int **) ;
 int ** pg_malloc (int) ;
 int run_permutation (TYPE_1__*,int,int **) ;
 int stderr ;
 int step_bsearch_cmp ;

__attribute__((used)) static void
run_named_permutations(TestSpec *testspec)
{
 int i,
    j;

 for (i = 0; i < testspec->npermutations; i++)
 {
  Permutation *p = testspec->permutations[i];
  Step **steps;

  steps = pg_malloc(p->nsteps * sizeof(Step *));


  for (j = 0; j < p->nsteps; j++)
  {
   Step **this = (Step **) bsearch(p->stepnames[j],
             testspec->allsteps,
             testspec->nallsteps,
             sizeof(Step *),
             &step_bsearch_cmp);

   if (this == ((void*)0))
   {
    fprintf(stderr, "undefined step \"%s\" specified in permutation\n",
      p->stepnames[j]);
    exit(1);
   }
   steps[j] = *this;
  }


  run_permutation(testspec, p->nsteps, steps);

  free(steps);
 }
}
