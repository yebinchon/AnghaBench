
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ npath; TYPE_1__* lex; int result_start; } ;
struct TYPE_3__ {int lex_level; int token_start; } ;
typedef TYPE_2__ GetState ;



__attribute__((used)) static void
get_object_start(void *state)
{
 GetState *_state = (GetState *) state;
 int lex_level = _state->lex->lex_level;

 if (lex_level == 0 && _state->npath == 0)
 {





  _state->result_start = _state->lex->token_start;
 }
}
