
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nallsteps; TYPE_1__** allsteps; scalar_t__ permutations; } ;
typedef TYPE_2__ TestSpec ;
struct TYPE_6__ {char* name; int used; } ;


 int fprintf (int ,char*,char*) ;
 int run_all_permutations (TYPE_2__*) ;
 int run_named_permutations (TYPE_2__*) ;
 int stderr ;

__attribute__((used)) static void
run_testspec(TestSpec *testspec)
{
 int i;

 if (testspec->permutations)
  run_named_permutations(testspec);
 else
  run_all_permutations(testspec);





 for (i = 0; i < testspec->nallsteps; i++)
 {
  if (!testspec->allsteps[i]->used)
   fprintf(stderr, "unused step name: %s\n",
     testspec->allsteps[i]->name);
 }
}
