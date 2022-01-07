
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int k; int n; size_t current; int * combinations; } ;
typedef TYPE_1__ CombinationGenerator ;


 int memcpy (int *,int*,int) ;

__attribute__((used)) static void
generate_combinations_recurse(CombinationGenerator *state,
         int index, int start, int *current)
{

 if (index < state->k)
 {
  int i;






  for (i = start; i < state->n; i++)
  {
   current[index] = i;
   generate_combinations_recurse(state, (index + 1), (i + 1), current);
  }

  return;
 }
 else
 {

  memcpy(&state->combinations[(state->k * state->current)],
      current, state->k * sizeof(int));
  state->current++;
 }
}
