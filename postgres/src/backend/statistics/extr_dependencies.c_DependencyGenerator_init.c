
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int k; int n; scalar_t__ current; scalar_t__ ndependencies; int * dependencies; } ;
typedef int DependencyGeneratorData ;
typedef TYPE_1__* DependencyGenerator ;
typedef int AttrNumber ;


 int Assert (int) ;
 int generate_dependencies (TYPE_1__*) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static DependencyGenerator
DependencyGenerator_init(int n, int k)
{
 DependencyGenerator state;

 Assert((n >= k) && (k > 0));


 state = (DependencyGenerator) palloc0(sizeof(DependencyGeneratorData));
 state->dependencies = (AttrNumber *) palloc(k * sizeof(AttrNumber));

 state->ndependencies = 0;
 state->current = 0;
 state->k = k;
 state->n = n;


 generate_dependencies(state);

 return state;
}
