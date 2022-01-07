
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendStringInfoCharMacro (int ,char) ;

__attribute__((used)) static void
append_with_tabs(StringInfo buf, const char *str)
{
 char ch;

 while ((ch = *str++) != '\0')
 {
  appendStringInfoCharMacro(buf, ch);
  if (ch == '\n')
   appendStringInfoCharMacro(buf, '\t');
 }
}
