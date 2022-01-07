
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendStringInfoCharMacro (int ,char) ;
 int initStringInfo (int ) ;

void
pq_begintypsend(StringInfo buf)
{
 initStringInfo(buf);

 appendStringInfoCharMacro(buf, '\0');
 appendStringInfoCharMacro(buf, '\0');
 appendStringInfoCharMacro(buf, '\0');
 appendStringInfoCharMacro(buf, '\0');
}
