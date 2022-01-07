
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int result_count; int result_size; char** result; TYPE_1__* lex; } ;
struct TYPE_3__ {int lex_level; } ;
typedef TYPE_2__ OkeysState ;


 char* pstrdup (char*) ;
 scalar_t__ repalloc (char**,int) ;

__attribute__((used)) static void
okeys_object_field_start(void *state, char *fname, bool isnull)
{
 OkeysState *_state = (OkeysState *) state;


 if (_state->lex->lex_level != 1)
  return;


 if (_state->result_count >= _state->result_size)
 {
  _state->result_size *= 2;
  _state->result = (char **)
   repalloc(_state->result, sizeof(char *) * _state->result_size);
 }


 _state->result[_state->result_count++] = pstrdup(fname);
}
