
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendStringInfo (int ,char*,int) ;
 int appendStringInfoCharMacro (int ,char const) ;
 int appendStringInfoString (int ,char*) ;

void
escape_json(StringInfo buf, const char *str)
{
 const char *p;

 appendStringInfoCharMacro(buf, '"');
 for (p = str; *p; p++)
 {
  switch (*p)
  {
   case '\b':
    appendStringInfoString(buf, "\\b");
    break;
   case '\f':
    appendStringInfoString(buf, "\\f");
    break;
   case '\n':
    appendStringInfoString(buf, "\\n");
    break;
   case '\r':
    appendStringInfoString(buf, "\\r");
    break;
   case '\t':
    appendStringInfoString(buf, "\\t");
    break;
   case '"':
    appendStringInfoString(buf, "\\\"");
    break;
   case '\\':
    appendStringInfoString(buf, "\\\\");
    break;
   default:
    if ((unsigned char) *p < ' ')
     appendStringInfo(buf, "\\u%04x", (int) *p);
    else
     appendStringInfoCharMacro(buf, *p);
    break;
  }
 }
 appendStringInfoCharMacro(buf, '"');
}
