
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int appendStringInfoCharMacro (TYPE_1__*,char const) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int initStringInfo (TYPE_1__*) ;

char *
escape_xml(const char *str)
{
 StringInfoData buf;
 const char *p;

 initStringInfo(&buf);
 for (p = str; *p; p++)
 {
  switch (*p)
  {
   case '&':
    appendStringInfoString(&buf, "&amp;");
    break;
   case '<':
    appendStringInfoString(&buf, "&lt;");
    break;
   case '>':
    appendStringInfoString(&buf, "&gt;");
    break;
   case '\r':
    appendStringInfoString(&buf, "&#x0d;");
    break;
   default:
    appendStringInfoCharMacro(&buf, *p);
    break;
  }
 }
 return buf.data;
}
