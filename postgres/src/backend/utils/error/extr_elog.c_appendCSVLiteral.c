
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendStringInfoCharMacro (int ,char) ;

__attribute__((used)) static inline void
appendCSVLiteral(StringInfo buf, const char *data)
{
 const char *p = data;
 char c;


 if (p == ((void*)0))
  return;

 appendStringInfoCharMacro(buf, '"');
 while ((c = *p++) != '\0')
 {
  if (c == '"')
   appendStringInfoCharMacro(buf, '"');
  appendStringInfoCharMacro(buf, c);
 }
 appendStringInfoCharMacro(buf, '"');
}
