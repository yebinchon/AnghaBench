
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int format; int indent; int str; } ;
typedef TYPE_1__ ExplainState ;






 int ExplainJSONLineEnding (TYPE_1__*) ;
 int ExplainXMLTag (char const*,int ,TYPE_1__*) ;
 int ExplainYAMLLineStarting (TYPE_1__*) ;
 int X_CLOSE_IMMEDIATE ;
 int appendStringInfoSpaces (int ,int) ;
 int appendStringInfoString (int ,char*) ;
 int escape_json (int ,char const*) ;
 int escape_yaml (int ,char const*) ;

__attribute__((used)) static void
ExplainDummyGroup(const char *objtype, const char *labelname, ExplainState *es)
{
 switch (es->format)
 {
  case 130:

   break;

  case 129:
   ExplainXMLTag(objtype, X_CLOSE_IMMEDIATE, es);
   break;

  case 131:
   ExplainJSONLineEnding(es);
   appendStringInfoSpaces(es->str, 2 * es->indent);
   if (labelname)
   {
    escape_json(es->str, labelname);
    appendStringInfoString(es->str, ": ");
   }
   escape_json(es->str, objtype);
   break;

  case 128:
   ExplainYAMLLineStarting(es);
   if (labelname)
   {
    escape_yaml(es->str, labelname);
    appendStringInfoString(es->str, ": ");
   }
   else
   {
    appendStringInfoString(es->str, "- ");
   }
   escape_yaml(es->str, objtype);
   break;
 }
}
