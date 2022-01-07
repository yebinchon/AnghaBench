
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int strval; } ;
typedef TYPE_1__ TransformJsonStringValuesState ;


 int appendStringInfoCharMacro (int ,char) ;

__attribute__((used)) static void
transform_string_values_object_start(void *state)
{
 TransformJsonStringValuesState *_state = (TransformJsonStringValuesState *) state;

 appendStringInfoCharMacro(_state->strval, '{');
}
