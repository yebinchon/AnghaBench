
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int npath; int* pathok; int next_scalar; TYPE_1__* lex; int * result_start; scalar_t__ normalize_results; int * tresult; int ** path_names; } ;
struct TYPE_3__ {int lex_level; scalar_t__ token_type; int * token_start; } ;
typedef TYPE_2__ GetState ;


 scalar_t__ JSON_TOKEN_STRING ;
 scalar_t__ strcmp (char*,int *) ;

__attribute__((used)) static void
get_object_field_start(void *state, char *fname, bool isnull)
{
 GetState *_state = (GetState *) state;
 bool get_next = 0;
 int lex_level = _state->lex->lex_level;

 if (lex_level <= _state->npath &&
  _state->pathok[lex_level - 1] &&
  _state->path_names != ((void*)0) &&
  _state->path_names[lex_level - 1] != ((void*)0) &&
  strcmp(fname, _state->path_names[lex_level - 1]) == 0)
 {
  if (lex_level < _state->npath)
  {

   _state->pathok[lex_level] = 1;
  }
  else
  {

   get_next = 1;
  }
 }

 if (get_next)
 {

  _state->tresult = ((void*)0);
  _state->result_start = ((void*)0);

  if (_state->normalize_results &&
   _state->lex->token_type == JSON_TOKEN_STRING)
  {

   _state->next_scalar = 1;
  }
  else
  {

   _state->result_start = _state->lex->token_start;
  }
 }
}
