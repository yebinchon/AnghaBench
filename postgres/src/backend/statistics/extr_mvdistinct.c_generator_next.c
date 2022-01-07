
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ current; scalar_t__ ncombinations; int* combinations; size_t k; } ;
typedef TYPE_1__ CombinationGenerator ;



__attribute__((used)) static int *
generator_next(CombinationGenerator *state)
{
 if (state->current == state->ncombinations)
  return ((void*)0);

 return &state->combinations[state->k * state->current++];
}
