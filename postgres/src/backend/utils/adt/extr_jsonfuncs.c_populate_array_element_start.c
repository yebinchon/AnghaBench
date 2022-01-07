
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * element_scalar; TYPE_1__* lex; int element_type; int element_start; TYPE_2__* ctx; } ;
struct TYPE_5__ {int ndims; } ;
struct TYPE_4__ {int lex_level; int token_type; int token_start; } ;
typedef TYPE_3__ PopulateArrayState ;



__attribute__((used)) static void
populate_array_element_start(void *_state, bool isnull)
{
 PopulateArrayState *state = (PopulateArrayState *) _state;
 int ndim = state->lex->lex_level;

 if (state->ctx->ndims <= 0 || ndim == state->ctx->ndims)
 {

  state->element_start = state->lex->token_start;
  state->element_type = state->lex->token_type;
  state->element_scalar = ((void*)0);
 }
}
