
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 scalar_t__ isdigit (unsigned char) ;

void
outToken(StringInfo str, const char *s)
{
 if (s == ((void*)0) || *s == '\0')
 {
  appendStringInfoString(str, "<>");
  return;
 }







 if (*s == '<' ||
  *s == '"' ||
  isdigit((unsigned char) *s) ||
  ((*s == '+' || *s == '-') &&
   (isdigit((unsigned char) s[1]) || s[1] == '.')))
  appendStringInfoChar(str, '\\');
 while (*s)
 {

  if (*s == ' ' || *s == '\n' || *s == '\t' ||
   *s == '(' || *s == ')' || *s == '{' || *s == '}' ||
   *s == '\\')
   appendStringInfoChar(str, '\\');
  appendStringInfoChar(str, *s++);
 }
}
