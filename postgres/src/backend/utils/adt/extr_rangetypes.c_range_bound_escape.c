
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int appendStringInfoChar (TYPE_1__*,char) ;
 int initStringInfo (TYPE_1__*) ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static char *
range_bound_escape(const char *value)
{
 bool nq;
 const char *ptr;
 StringInfoData buf;

 initStringInfo(&buf);


 nq = (value[0] == '\0');
 for (ptr = value; *ptr; ptr++)
 {
  char ch = *ptr;

  if (ch == '"' || ch == '\\' ||
   ch == '(' || ch == ')' ||
   ch == '[' || ch == ']' ||
   ch == ',' ||
   isspace((unsigned char) ch))
  {
   nq = 1;
   break;
  }
 }


 if (nq)
  appendStringInfoChar(&buf, '"');
 for (ptr = value; *ptr; ptr++)
 {
  char ch = *ptr;

  if (ch == '"' || ch == '\\')
   appendStringInfoChar(&buf, ch);
  appendStringInfoChar(&buf, ch);
 }
 if (nq)
  appendStringInfoChar(&buf, '"');

 return buf.data;
}
