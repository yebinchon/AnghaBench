
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ npath; char* result_start; int tresult; TYPE_1__* lex; } ;
struct TYPE_3__ {int lex_level; char* prev_token_terminator; } ;
typedef TYPE_2__ GetState ;


 int cstring_to_text_with_len (char*,int) ;

__attribute__((used)) static void
get_array_end(void *state)
{
 GetState *_state = (GetState *) state;
 int lex_level = _state->lex->lex_level;

 if (lex_level == 0 && _state->npath == 0)
 {

  char *start = _state->result_start;
  int len = _state->lex->prev_token_terminator - start;

  _state->tresult = cstring_to_text_with_len(start, len);
 }
}
