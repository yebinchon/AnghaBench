
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int text ;
struct TYPE_2__ {int strval; int action_state; int * (* action ) (int ,char*,int ) ;} ;
typedef TYPE_1__ TransformJsonStringValuesState ;
typedef scalar_t__ JsonTokenType ;


 scalar_t__ JSON_TOKEN_STRING ;
 int appendStringInfoString (int ,char*) ;
 int escape_json (int ,int ) ;
 int strlen (char*) ;
 int * stub1 (int ,char*,int ) ;
 int text_to_cstring (int *) ;

__attribute__((used)) static void
transform_string_values_scalar(void *state, char *token, JsonTokenType tokentype)
{
 TransformJsonStringValuesState *_state = (TransformJsonStringValuesState *) state;

 if (tokentype == JSON_TOKEN_STRING)
 {
  text *out = _state->action(_state->action_state, token, strlen(token));

  escape_json(_state->strval, text_to_cstring(out));
 }
 else
  appendStringInfoString(_state->strval, token);
}
