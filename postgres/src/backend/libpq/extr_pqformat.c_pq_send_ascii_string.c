
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 scalar_t__ IS_HIGHBIT_SET (char) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoCharMacro (int ,char) ;

void
pq_send_ascii_string(StringInfo buf, const char *str)
{
 while (*str)
 {
  char ch = *str++;

  if (IS_HIGHBIT_SET(ch))
   ch = '?';
  appendStringInfoCharMacro(buf, ch);
 }
 appendStringInfoChar(buf, '\0');
}
