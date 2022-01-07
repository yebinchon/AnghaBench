
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int format; int indent; int str; } ;
typedef TYPE_1__ ExplainState ;






 int ExplainJSONLineEnding (TYPE_1__*) ;
 int ExplainXMLTag (char const*,int,TYPE_1__*) ;
 int ExplainYAMLLineStarting (TYPE_1__*) ;
 int X_CLOSING ;
 int X_NOWHITESPACE ;
 int X_OPENING ;
 int appendStringInfo (int ,char*,char const*,...) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoSpaces (int ,int) ;
 int appendStringInfoString (int ,char const*) ;
 int escape_json (int ,char const*) ;
 char* escape_xml (char const*) ;
 int escape_yaml (int ,char const*) ;
 int pfree (char*) ;

__attribute__((used)) static void
ExplainProperty(const char *qlabel, const char *unit, const char *value,
    bool numeric, ExplainState *es)
{
 switch (es->format)
 {
  case 130:
   appendStringInfoSpaces(es->str, es->indent * 2);
   if (unit)
    appendStringInfo(es->str, "%s: %s %s\n", qlabel, value, unit);
   else
    appendStringInfo(es->str, "%s: %s\n", qlabel, value);
   break;

  case 129:
   {
    char *str;

    appendStringInfoSpaces(es->str, es->indent * 2);
    ExplainXMLTag(qlabel, X_OPENING | X_NOWHITESPACE, es);
    str = escape_xml(value);
    appendStringInfoString(es->str, str);
    pfree(str);
    ExplainXMLTag(qlabel, X_CLOSING | X_NOWHITESPACE, es);
    appendStringInfoChar(es->str, '\n');
   }
   break;

  case 131:
   ExplainJSONLineEnding(es);
   appendStringInfoSpaces(es->str, es->indent * 2);
   escape_json(es->str, qlabel);
   appendStringInfoString(es->str, ": ");
   if (numeric)
    appendStringInfoString(es->str, value);
   else
    escape_json(es->str, value);
   break;

  case 128:
   ExplainYAMLLineStarting(es);
   appendStringInfo(es->str, "%s: ", qlabel);
   if (numeric)
    appendStringInfoString(es->str, value);
   else
    escape_yaml(es->str, value);
   break;
 }
}
