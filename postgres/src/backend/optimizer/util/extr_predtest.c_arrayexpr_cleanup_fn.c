
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int args; } ;
struct TYPE_8__ {TYPE_1__ opexpr; } ;
struct TYPE_7__ {scalar_t__ state; } ;
typedef TYPE_2__* PredIterInfo ;
typedef TYPE_3__ ArrayExprIterState ;


 int list_free (int ) ;
 int pfree (TYPE_3__*) ;

__attribute__((used)) static void
arrayexpr_cleanup_fn(PredIterInfo info)
{
 ArrayExprIterState *state = (ArrayExprIterState *) info->state;

 list_free(state->opexpr.args);
 pfree(state);
}
