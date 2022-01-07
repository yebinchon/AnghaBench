
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int format; void* grouping_stack; int str; int indent; } ;
typedef TYPE_1__ ExplainState ;






 int appendStringInfoString (int ,char*) ;
 void* list_delete_first (void*) ;

void
ExplainEndOutput(ExplainState *es)
{
 switch (es->format)
 {
  case 130:

   break;

  case 129:
   es->indent--;
   appendStringInfoString(es->str, "</explain>");
   break;

  case 131:
   es->indent--;
   appendStringInfoString(es->str, "\n]");
   es->grouping_stack = list_delete_first(es->grouping_stack);
   break;

  case 128:
   es->grouping_stack = list_delete_first(es->grouping_stack);
   break;
 }
}
