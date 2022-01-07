
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int text ;
struct TYPE_4__ {scalar_t__ npath; int next_scalar; int * tresult; TYPE_1__* lex; scalar_t__ normalize_results; } ;
struct TYPE_3__ {int lex_level; char* input; char* prev_token_terminator; } ;
typedef scalar_t__ JsonTokenType ;
typedef TYPE_2__ GetState ;


 scalar_t__ JSON_TOKEN_NULL ;
 scalar_t__ JSON_TOKEN_STRING ;
 int * cstring_to_text (char*) ;
 int * cstring_to_text_with_len (char*,int) ;

__attribute__((used)) static void
get_scalar(void *state, char *token, JsonTokenType tokentype)
{
 GetState *_state = (GetState *) state;
 int lex_level = _state->lex->lex_level;


 if (lex_level == 0 && _state->npath == 0)
 {
  if (_state->normalize_results && tokentype == JSON_TOKEN_STRING)
  {

   _state->next_scalar = 1;
  }
  else if (_state->normalize_results && tokentype == JSON_TOKEN_NULL)
  {
   _state->tresult = (text *) ((void*)0);
  }
  else
  {





   char *start = _state->lex->input;
   int len = _state->lex->prev_token_terminator - start;

   _state->tresult = cstring_to_text_with_len(start, len);
  }
 }

 if (_state->next_scalar)
 {

  _state->tresult = cstring_to_text(token);

  _state->next_scalar = 0;
 }
}
