
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int appendStringInfoChar (TYPE_1__*,char const) ;
 int initStringInfo (TYPE_1__*) ;

__attribute__((used)) static char *
escape_param_str(const char *str)
{
 const char *cp;
 StringInfoData buf;

 initStringInfo(&buf);

 for (cp = str; *cp; cp++)
 {
  if (*cp == '\\' || *cp == '\'')
   appendStringInfoChar(&buf, '\\');
  appendStringInfoChar(&buf, *cp);
 }

 return buf.data;
}
