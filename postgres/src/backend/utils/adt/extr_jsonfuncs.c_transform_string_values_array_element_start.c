
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* strval; } ;
typedef TYPE_1__ TransformJsonStringValuesState ;
struct TYPE_4__ {char* data; int len; } ;


 int appendStringInfoCharMacro (TYPE_2__*,char) ;

__attribute__((used)) static void
transform_string_values_array_element_start(void *state, bool isnull)
{
 TransformJsonStringValuesState *_state = (TransformJsonStringValuesState *) state;

 if (_state->strval->data[_state->strval->len - 1] != '[')
  appendStringInfoCharMacro(_state->strval, ',');
}
