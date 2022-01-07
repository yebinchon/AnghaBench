
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ndims; } ;
struct TYPE_6__ {TYPE_3__* ctx; TYPE_1__* lex; } ;
struct TYPE_5__ {int lex_level; } ;
typedef TYPE_2__ PopulateArrayState ;


 int populate_array_assign_ndims (TYPE_3__*,int) ;
 int populate_array_report_expected_array (TYPE_3__*,int) ;

__attribute__((used)) static void
populate_array_object_start(void *_state)
{
 PopulateArrayState *state = (PopulateArrayState *) _state;
 int ndim = state->lex->lex_level;

 if (state->ctx->ndims <= 0)
  populate_array_assign_ndims(state->ctx, ndim);
 else if (ndim < state->ctx->ndims)
  populate_array_report_expected_array(state->ctx, ndim);
}
