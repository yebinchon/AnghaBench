
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int next_scalar; TYPE_1__* lex; int result_start; scalar_t__ normalize_results; } ;
struct TYPE_3__ {int lex_level; scalar_t__ token_type; int token_start; } ;
typedef TYPE_2__ ElementsState ;


 scalar_t__ JSON_TOKEN_STRING ;

__attribute__((used)) static void
elements_array_element_start(void *state, bool isnull)
{
 ElementsState *_state = (ElementsState *) state;


 if (_state->lex->lex_level == 1)
 {





  if (_state->normalize_results && _state->lex->token_type == JSON_TOKEN_STRING)
   _state->next_scalar = 1;
  else
   _state->result_start = _state->lex->token_start;
 }
}
