
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ saved_token_type; int * save_json_start; TYPE_1__* lex; } ;
struct TYPE_3__ {int lex_level; scalar_t__ token_type; int * token_start; } ;
typedef TYPE_2__ JHashState ;


 scalar_t__ JSON_TOKEN_ARRAY_START ;
 scalar_t__ JSON_TOKEN_OBJECT_START ;

__attribute__((used)) static void
hash_object_field_start(void *state, char *fname, bool isnull)
{
 JHashState *_state = (JHashState *) state;

 if (_state->lex->lex_level > 1)
  return;


 _state->saved_token_type = _state->lex->token_type;

 if (_state->lex->token_type == JSON_TOKEN_ARRAY_START ||
  _state->lex->token_type == JSON_TOKEN_OBJECT_START)
 {

  _state->save_json_start = _state->lex->token_start;
 }
 else
 {

  _state->save_json_start = ((void*)0);
 }
}
