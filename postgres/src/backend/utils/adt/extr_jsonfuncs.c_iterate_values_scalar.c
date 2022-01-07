
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int action_state; int (* action ) (int ,char*,int ) ;} ;
typedef int JsonTokenType ;
typedef TYPE_1__ IterateJsonStringValuesState ;






 int jtiBool ;
 int jtiNumeric ;
 int jtiString ;
 int strlen (char*) ;
 int stub1 (int ,char*,int ) ;
 int stub2 (int ,char*,int ) ;
 int stub3 (int ,char*,int ) ;

__attribute__((used)) static void
iterate_values_scalar(void *state, char *token, JsonTokenType tokentype)
{
 IterateJsonStringValuesState *_state = (IterateJsonStringValuesState *) state;

 switch (tokentype)
 {
  case 129:
   if (_state->flags & jtiString)
    _state->action(_state->action_state, token, strlen(token));
   break;
  case 130:
   if (_state->flags & jtiNumeric)
    _state->action(_state->action_state, token, strlen(token));
   break;
  case 128:
  case 131:
   if (_state->flags & jtiBool)
    _state->action(_state->action_state, token, strlen(token));
   break;
  default:

   break;
 }
}
