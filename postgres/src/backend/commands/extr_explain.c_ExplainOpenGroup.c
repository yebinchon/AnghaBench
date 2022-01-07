
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int format; int indent; void* grouping_stack; int str; } ;
typedef TYPE_1__ ExplainState ;






 int ExplainJSONLineEnding (TYPE_1__*) ;
 int ExplainXMLTag (char const*,int ,TYPE_1__*) ;
 int ExplainYAMLLineStarting (TYPE_1__*) ;
 int X_OPENING ;
 int appendStringInfo (int ,char*,char const*) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoSpaces (int ,int) ;
 int appendStringInfoString (int ,char*) ;
 int escape_json (int ,char const*) ;
 void* lcons_int (int,void*) ;

void
ExplainOpenGroup(const char *objtype, const char *labelname,
     bool labeled, ExplainState *es)
{
 switch (es->format)
 {
  case 130:

   break;

  case 129:
   ExplainXMLTag(objtype, X_OPENING, es);
   es->indent++;
   break;

  case 131:
   ExplainJSONLineEnding(es);
   appendStringInfoSpaces(es->str, 2 * es->indent);
   if (labelname)
   {
    escape_json(es->str, labelname);
    appendStringInfoString(es->str, ": ");
   }
   appendStringInfoChar(es->str, labeled ? '{' : '[');







   es->grouping_stack = lcons_int(0, es->grouping_stack);
   es->indent++;
   break;

  case 128:







   ExplainYAMLLineStarting(es);
   if (labelname)
   {
    appendStringInfo(es->str, "%s: ", labelname);
    es->grouping_stack = lcons_int(1, es->grouping_stack);
   }
   else
   {
    appendStringInfoString(es->str, "- ");
    es->grouping_stack = lcons_int(0, es->grouping_stack);
   }
   es->indent++;
   break;
 }
}
