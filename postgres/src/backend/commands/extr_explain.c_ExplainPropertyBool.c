
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExplainState ;


 int ExplainProperty (char const*,int *,char*,int,int *) ;

void
ExplainPropertyBool(const char *qlabel, bool value, ExplainState *es)
{
 ExplainProperty(qlabel, ((void*)0), value ? "true" : "false", 1, es);
}
