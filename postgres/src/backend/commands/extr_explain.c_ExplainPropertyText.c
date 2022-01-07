
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExplainState ;


 int ExplainProperty (char const*,int *,char const*,int,int *) ;

void
ExplainPropertyText(const char *qlabel, const char *value, ExplainState *es)
{
 ExplainProperty(qlabel, ((void*)0), value, 0, es);
}
