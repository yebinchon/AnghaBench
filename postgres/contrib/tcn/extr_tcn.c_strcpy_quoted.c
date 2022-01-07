
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendStringInfoCharMacro (int ,char const) ;

__attribute__((used)) static void
strcpy_quoted(StringInfo r, const char *s, const char q)
{
 appendStringInfoCharMacro(r, q);
 while (*s)
 {
  if (*s == q)
   appendStringInfoCharMacro(r, q);
  appendStringInfoCharMacro(r, *s);
  s++;
 }
 appendStringInfoCharMacro(r, q);
}
