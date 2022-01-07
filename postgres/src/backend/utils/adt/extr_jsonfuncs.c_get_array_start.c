
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lex_level; int token_start; } ;
struct TYPE_3__ {int npath; int* array_cur_index; scalar_t__* path_indexes; TYPE_2__* lex; int result_start; } ;
typedef TYPE_1__ GetState ;


 scalar_t__ INT_MIN ;
 int json_count_array_elements (TYPE_2__*) ;

__attribute__((used)) static void
get_array_start(void *state)
{
 GetState *_state = (GetState *) state;
 int lex_level = _state->lex->lex_level;

 if (lex_level < _state->npath)
 {

  _state->array_cur_index[lex_level] = -1;


  if (_state->path_indexes[lex_level] < 0 &&
   _state->path_indexes[lex_level] != INT_MIN)
  {

   int nelements = json_count_array_elements(_state->lex);

   if (-_state->path_indexes[lex_level] <= nelements)
    _state->path_indexes[lex_level] += nelements;
  }
 }
 else if (lex_level == 0 && _state->npath == 0)
 {





  _state->result_start = _state->lex->token_start;
 }
}
