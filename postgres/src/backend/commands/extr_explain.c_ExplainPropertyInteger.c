
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int buf ;
typedef int ExplainState ;


 int ExplainProperty (char const*,char const*,char*,int,int *) ;
 char* INT64_FORMAT ;
 int snprintf (char*,int,char*,int ) ;

void
ExplainPropertyInteger(const char *qlabel, const char *unit, int64 value,
        ExplainState *es)
{
 char buf[32];

 snprintf(buf, sizeof(buf), INT64_FORMAT, value);
 ExplainProperty(qlabel, unit, buf, 1, es);
}
