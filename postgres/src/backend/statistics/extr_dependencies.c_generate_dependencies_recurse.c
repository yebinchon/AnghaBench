
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int k; scalar_t__ n; scalar_t__* dependencies; int ndependencies; } ;
typedef TYPE_1__* DependencyGenerator ;
typedef scalar_t__ AttrNumber ;


 int memcpy (scalar_t__*,scalar_t__*,int) ;
 scalar_t__ repalloc (scalar_t__*,int) ;

__attribute__((used)) static void
generate_dependencies_recurse(DependencyGenerator state, int index,
         AttrNumber start, AttrNumber *current)
{




 if (index < (state->k - 1))
 {
  AttrNumber i;






  for (i = start; i < state->n; i++)
  {
   current[index] = i;
   generate_dependencies_recurse(state, (index + 1), (i + 1), current);
  }
 }
 else
 {
  int i;







  for (i = 0; i < state->n; i++)
  {
   int j;
   bool match = 0;

   current[index] = i;

   for (j = 0; j < index; j++)
   {
    if (current[j] == i)
    {
     match = 1;
     break;
    }
   }





   if (!match)
   {
    state->dependencies = (AttrNumber *) repalloc(state->dependencies,
                 state->k * (state->ndependencies + 1) * sizeof(AttrNumber));
    memcpy(&state->dependencies[(state->k * state->ndependencies)],
        current, state->k * sizeof(AttrNumber));
    state->ndependencies++;
   }
  }
 }
}
