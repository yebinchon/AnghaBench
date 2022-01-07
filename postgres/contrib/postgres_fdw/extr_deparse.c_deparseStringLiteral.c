
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 char ESCAPE_STRING_SYNTAX ;
 scalar_t__ SQL_STR_DOUBLE (char,int) ;
 int appendStringInfoChar (int ,char) ;
 int * strchr (char const*,char) ;

void
deparseStringLiteral(StringInfo buf, const char *val)
{
 const char *valptr;







 if (strchr(val, '\\') != ((void*)0))
  appendStringInfoChar(buf, ESCAPE_STRING_SYNTAX);
 appendStringInfoChar(buf, '\'');
 for (valptr = val; *valptr; valptr++)
 {
  char ch = *valptr;

  if (SQL_STR_DOUBLE(ch, 1))
   appendStringInfoChar(buf, ch);
  appendStringInfoChar(buf, ch);
 }
 appendStringInfoChar(buf, '\'');
}
