
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int strval; } ;
typedef TYPE_1__ StripnullState ;


 int appendStringInfoCharMacro (int ,char) ;

__attribute__((used)) static void
sn_object_end(void *state)
{
 StripnullState *_state = (StripnullState *) state;

 appendStringInfoCharMacro(_state->strval, '}');
}
