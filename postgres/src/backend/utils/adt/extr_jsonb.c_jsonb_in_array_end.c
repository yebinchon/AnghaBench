
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parseState; int res; } ;
typedef TYPE_1__ JsonbInState ;


 int WJB_END_ARRAY ;
 int pushJsonbValue (int *,int ,int *) ;

__attribute__((used)) static void
jsonb_in_array_end(void *pstate)
{
 JsonbInState *_state = (JsonbInState *) pstate;

 _state->res = pushJsonbValue(&_state->parseState, WJB_END_ARRAY, ((void*)0));
}
