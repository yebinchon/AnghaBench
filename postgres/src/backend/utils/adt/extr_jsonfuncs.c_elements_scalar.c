
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* normalized_scalar; scalar_t__ next_scalar; int function_name; TYPE_1__* lex; } ;
struct TYPE_3__ {scalar_t__ lex_level; } ;
typedef int JsonTokenType ;
typedef TYPE_2__ ElementsState ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static void
elements_scalar(void *state, char *token, JsonTokenType tokentype)
{
 ElementsState *_state = (ElementsState *) state;


 if (_state->lex->lex_level == 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("cannot call %s on a scalar",
      _state->function_name)));


 if (_state->next_scalar)
  _state->normalized_scalar = token;
}
