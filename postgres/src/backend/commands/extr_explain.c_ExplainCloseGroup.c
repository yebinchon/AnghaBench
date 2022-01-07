
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int format; int indent; void* grouping_stack; int str; } ;
typedef TYPE_1__ ExplainState ;






 int ExplainXMLTag (char const*,int ,TYPE_1__*) ;
 int X_CLOSING ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoSpaces (int ,int) ;
 void* list_delete_first (void*) ;

void
ExplainCloseGroup(const char *objtype, const char *labelname,
      bool labeled, ExplainState *es)
{
 switch (es->format)
 {
  case 130:

   break;

  case 129:
   es->indent--;
   ExplainXMLTag(objtype, X_CLOSING, es);
   break;

  case 131:
   es->indent--;
   appendStringInfoChar(es->str, '\n');
   appendStringInfoSpaces(es->str, 2 * es->indent);
   appendStringInfoChar(es->str, labeled ? '}' : ']');
   es->grouping_stack = list_delete_first(es->grouping_stack);
   break;

  case 128:
   es->indent--;
   es->grouping_stack = list_delete_first(es->grouping_stack);
   break;
 }
}
