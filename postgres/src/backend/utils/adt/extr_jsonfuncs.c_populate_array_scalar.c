
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ndims; } ;
struct TYPE_7__ {char* element_scalar; scalar_t__ element_type; TYPE_1__* lex; TYPE_3__* ctx; } ;
struct TYPE_6__ {int lex_level; } ;
typedef TYPE_2__ PopulateArrayState ;
typedef TYPE_3__ PopulateArrayContext ;
typedef scalar_t__ JsonTokenType ;


 int Assert (int) ;
 int populate_array_assign_ndims (TYPE_3__*,int) ;
 int populate_array_report_expected_array (TYPE_3__*,int) ;

__attribute__((used)) static void
populate_array_scalar(void *_state, char *token, JsonTokenType tokentype)
{
 PopulateArrayState *state = (PopulateArrayState *) _state;
 PopulateArrayContext *ctx = state->ctx;
 int ndim = state->lex->lex_level;

 if (ctx->ndims <= 0)
  populate_array_assign_ndims(ctx, ndim);
 else if (ndim < ctx->ndims)
  populate_array_report_expected_array(ctx, ndim);

 if (ndim == ctx->ndims)
 {

  state->element_scalar = token;

  Assert(state->element_type == tokentype);
 }
}
