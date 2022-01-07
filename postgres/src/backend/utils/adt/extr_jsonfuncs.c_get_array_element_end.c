
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int text ;
struct TYPE_4__ {int npath; int* pathok; scalar_t__* path_indexes; scalar_t__* array_cur_index; char* result_start; int * tresult; TYPE_1__* lex; scalar_t__ normalize_results; } ;
struct TYPE_3__ {int lex_level; char* prev_token_terminator; } ;
typedef TYPE_2__ GetState ;


 int * cstring_to_text_with_len (char*,int) ;

__attribute__((used)) static void
get_array_element_end(void *state, bool isnull)
{
 GetState *_state = (GetState *) state;
 bool get_last = 0;
 int lex_level = _state->lex->lex_level;


 if (lex_level <= _state->npath &&
  _state->pathok[lex_level - 1] &&
  _state->path_indexes != ((void*)0) &&
  _state->array_cur_index[lex_level - 1] == _state->path_indexes[lex_level - 1])
 {
  if (lex_level < _state->npath)
  {

   _state->pathok[lex_level] = 0;
  }
  else
  {

   get_last = 1;
  }
 }


 if (get_last && _state->result_start != ((void*)0))
 {
  if (isnull && _state->normalize_results)
   _state->tresult = (text *) ((void*)0);
  else
  {
   char *start = _state->result_start;
   int len = _state->lex->prev_token_terminator - start;

   _state->tresult = cstring_to_text_with_len(start, len);
  }

  _state->result_start = ((void*)0);
 }
}
