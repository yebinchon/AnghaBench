
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendBinaryStringInfo (int ,char*,int) ;
 int appendStringInfoCharMacro (int ,char) ;

__attribute__((used)) static void
add_indent(StringInfo out, bool indent, int level)
{
 if (indent)
 {
  int i;

  appendStringInfoCharMacro(out, '\n');
  for (i = 0; i < level; i++)
   appendBinaryStringInfo(out, "    ", 4);
 }
}
