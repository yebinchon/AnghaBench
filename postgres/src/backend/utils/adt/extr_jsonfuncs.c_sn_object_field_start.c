
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* data; int len; } ;
struct TYPE_4__ {int skip_next_null; TYPE_2__* strval; } ;
typedef TYPE_1__ StripnullState ;


 int appendStringInfoCharMacro (TYPE_2__*,char) ;
 int escape_json (TYPE_2__*,char*) ;

__attribute__((used)) static void
sn_object_field_start(void *state, char *fname, bool isnull)
{
 StripnullState *_state = (StripnullState *) state;

 if (isnull)
 {





  _state->skip_next_null = 1;
  return;
 }

 if (_state->strval->data[_state->strval->len - 1] != '{')
  appendStringInfoCharMacro(_state->strval, ',');





 escape_json(_state->strval, fname);

 appendStringInfoCharMacro(_state->strval, ':');
}
