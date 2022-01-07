
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int text ;
struct TYPE_5__ {int flags; void* action_state; int action; int * lex; } ;
struct TYPE_4__ {int object_field_start; int scalar; void* semstate; } ;
typedef TYPE_1__ JsonSemAction ;
typedef int JsonLexContext ;
typedef int JsonIterateStringValuesAction ;
typedef TYPE_2__ IterateJsonStringValuesState ;


 int iterate_values_object_field_start ;
 int iterate_values_scalar ;
 int * makeJsonLexContext (int *,int) ;
 void* palloc0 (int) ;
 int pg_parse_json (int *,TYPE_1__*) ;

void
iterate_json_values(text *json, uint32 flags, void *action_state,
     JsonIterateStringValuesAction action)
{
 JsonLexContext *lex = makeJsonLexContext(json, 1);
 JsonSemAction *sem = palloc0(sizeof(JsonSemAction));
 IterateJsonStringValuesState *state = palloc0(sizeof(IterateJsonStringValuesState));

 state->lex = lex;
 state->action = action;
 state->action_state = action_state;
 state->flags = flags;

 sem->semstate = (void *) state;
 sem->scalar = iterate_values_scalar;
 sem->object_field_start = iterate_values_object_field_start;

 pg_parse_json(lex, sem);
}
