
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* saved_scalar; TYPE_1__* lex; int function_name; } ;
struct TYPE_3__ {int lex_level; } ;
typedef TYPE_2__ PopulateRecordsetState ;
typedef int JsonTokenType ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static void
populate_recordset_scalar(void *state, char *token, JsonTokenType tokentype)
{
 PopulateRecordsetState *_state = (PopulateRecordsetState *) state;

 if (_state->lex->lex_level == 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("cannot call %s on a scalar",
      _state->function_name)));

 if (_state->lex->lex_level == 2)
  _state->saved_scalar = token;
}
