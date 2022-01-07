
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int skip_next_null; int strval; } ;
typedef TYPE_1__ StripnullState ;
typedef scalar_t__ JsonTokenType ;


 int Assert (int) ;
 scalar_t__ JSON_TOKEN_NULL ;
 scalar_t__ JSON_TOKEN_STRING ;
 int appendStringInfoString (int ,char*) ;
 int escape_json (int ,char*) ;

__attribute__((used)) static void
sn_scalar(void *state, char *token, JsonTokenType tokentype)
{
 StripnullState *_state = (StripnullState *) state;

 if (_state->skip_next_null)
 {
  Assert(tokentype == JSON_TOKEN_NULL);
  _state->skip_next_null = 0;
  return;
 }

 if (tokentype == JSON_TOKEN_STRING)
  escape_json(_state->strval, token);
 else
  appendStringInfoString(_state->strval, token);
}
