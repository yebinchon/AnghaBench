
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int function_name; TYPE_1__* lex; } ;
struct TYPE_3__ {int lex_level; scalar_t__ token_type; } ;
typedef TYPE_2__ PopulateRecordsetState ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ JSON_TOKEN_OBJECT_START ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static void
populate_recordset_array_element_start(void *state, bool isnull)
{
 PopulateRecordsetState *_state = (PopulateRecordsetState *) state;

 if (_state->lex->lex_level == 1 &&
  _state->lex->token_type != JSON_TOKEN_OBJECT_START)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("argument of %s must be an array of objects",
      _state->function_name)));
}
