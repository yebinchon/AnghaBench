
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ncombinations; int* combinations; int current; int k; int n; } ;
typedef TYPE_1__ CombinationGenerator ;


 int Assert (int) ;
 int generate_combinations (TYPE_1__*) ;
 int n_choose_k (int,int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static CombinationGenerator *
generator_init(int n, int k)
{
 CombinationGenerator *state;

 Assert((n >= k) && (k > 0));


 state = (CombinationGenerator *) palloc(sizeof(CombinationGenerator));

 state->ncombinations = n_choose_k(n, k);


 state->combinations = (int *) palloc(sizeof(int) * k * state->ncombinations);

 state->current = 0;
 state->k = k;
 state->n = n;


 generate_combinations(state);


 Assert(state->current == state->ncombinations);


 state->current = 0;

 return state;
}
