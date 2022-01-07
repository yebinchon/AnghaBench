
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int size; int contVal; } ;
typedef TYPE_1__ JsonbParseState ;


 void* palloc (int) ;

__attribute__((used)) static JsonbParseState *
clone_parse_state(JsonbParseState *state)
{
 JsonbParseState *result,
      *icursor,
      *ocursor;

 if (state == ((void*)0))
  return ((void*)0);

 result = palloc(sizeof(JsonbParseState));
 icursor = state;
 ocursor = result;
 for (;;)
 {
  ocursor->contVal = icursor->contVal;
  ocursor->size = icursor->size;
  icursor = icursor->next;
  if (icursor == ((void*)0))
   break;
  ocursor->next = palloc(sizeof(JsonbParseState));
  ocursor = ocursor->next;
 }
 ocursor->next = ((void*)0);

 return result;
}
