
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int constisnull; int constvalue; } ;
struct TYPE_7__ {size_t next_elem; size_t num_elems; int opexpr; int * elem_nulls; TYPE_1__ constexpr; int * elem_values; } ;
struct TYPE_6__ {scalar_t__ state; } ;
typedef TYPE_2__* PredIterInfo ;
typedef int Node ;
typedef TYPE_3__ ArrayConstIterState ;



__attribute__((used)) static Node *
arrayconst_next_fn(PredIterInfo info)
{
 ArrayConstIterState *state = (ArrayConstIterState *) info->state;

 if (state->next_elem >= state->num_elems)
  return ((void*)0);
 state->constexpr.constvalue = state->elem_values[state->next_elem];
 state->constexpr.constisnull = state->elem_nulls[state->next_elem];
 state->next_elem++;
 return (Node *) &(state->opexpr);
}
