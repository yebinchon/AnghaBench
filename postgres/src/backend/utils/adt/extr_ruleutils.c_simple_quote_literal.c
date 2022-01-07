
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 scalar_t__ SQL_STR_DOUBLE (char,int) ;
 int appendStringInfoChar (int ,char) ;
 int standard_conforming_strings ;

__attribute__((used)) static void
simple_quote_literal(StringInfo buf, const char *val)
{
 const char *valptr;






 appendStringInfoChar(buf, '\'');
 for (valptr = val; *valptr; valptr++)
 {
  char ch = *valptr;

  if (SQL_STR_DOUBLE(ch, !standard_conforming_strings))
   appendStringInfoChar(buf, ch);
  appendStringInfoChar(buf, ch);
 }
 appendStringInfoChar(buf, '\'');
}
