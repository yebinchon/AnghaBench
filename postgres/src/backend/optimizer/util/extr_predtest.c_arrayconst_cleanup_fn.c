
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int args; } ;
struct TYPE_8__ {TYPE_1__ opexpr; struct TYPE_8__* elem_nulls; struct TYPE_8__* elem_values; } ;
struct TYPE_7__ {scalar_t__ state; } ;
typedef TYPE_2__* PredIterInfo ;
typedef TYPE_3__ ArrayConstIterState ;


 int list_free (int ) ;
 int pfree (TYPE_3__*) ;

__attribute__((used)) static void
arrayconst_cleanup_fn(PredIterInfo info)
{
 ArrayConstIterState *state = (ArrayConstIterState *) info->state;

 pfree(state->elem_values);
 pfree(state->elem_nulls);
 list_free(state->opexpr.args);
 pfree(state);
}
