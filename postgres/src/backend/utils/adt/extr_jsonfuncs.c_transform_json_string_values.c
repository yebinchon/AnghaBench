
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int text ;
struct TYPE_5__ {TYPE_4__* strval; void* action_state; int action; int * lex; } ;
typedef TYPE_1__ TransformJsonStringValuesState ;
struct TYPE_7__ {int len; int data; } ;
struct TYPE_6__ {int object_field_start; int array_element_start; void* scalar; int array_end; int array_start; int object_end; int object_start; void* semstate; } ;
typedef int JsonTransformStringValuesAction ;
typedef TYPE_2__ JsonSemAction ;
typedef int JsonLexContext ;


 int * cstring_to_text_with_len (int ,int ) ;
 int * makeJsonLexContext (int *,int) ;
 TYPE_4__* makeStringInfo () ;
 void* palloc0 (int) ;
 int pg_parse_json (int *,TYPE_2__*) ;
 int transform_string_values_array_element_start ;
 int transform_string_values_array_end ;
 int transform_string_values_array_start ;
 int transform_string_values_object_end ;
 int transform_string_values_object_field_start ;
 int transform_string_values_object_start ;
 void* transform_string_values_scalar ;

text *
transform_json_string_values(text *json, void *action_state,
        JsonTransformStringValuesAction transform_action)
{
 JsonLexContext *lex = makeJsonLexContext(json, 1);
 JsonSemAction *sem = palloc0(sizeof(JsonSemAction));
 TransformJsonStringValuesState *state = palloc0(sizeof(TransformJsonStringValuesState));

 state->lex = lex;
 state->strval = makeStringInfo();
 state->action = transform_action;
 state->action_state = action_state;

 sem->semstate = (void *) state;
 sem->scalar = transform_string_values_scalar;
 sem->object_start = transform_string_values_object_start;
 sem->object_end = transform_string_values_object_end;
 sem->array_start = transform_string_values_array_start;
 sem->array_end = transform_string_values_array_end;
 sem->scalar = transform_string_values_scalar;
 sem->array_element_start = transform_string_values_array_element_start;
 sem->object_field_start = transform_string_values_object_field_start;

 pg_parse_json(lex, sem);

 return cstring_to_text_with_len(state->strval->data, state->strval->len);
}
