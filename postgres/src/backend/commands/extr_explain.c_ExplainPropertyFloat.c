
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExplainState ;


 int ExplainProperty (char const*,char const*,char*,int,int *) ;
 int pfree (char*) ;
 char* psprintf (char*,int,double) ;

void
ExplainPropertyFloat(const char *qlabel, const char *unit, double value,
      int ndigits, ExplainState *es)
{
 char *buf;

 buf = psprintf("%.*f", ndigits, value);
 ExplainProperty(qlabel, unit, buf, 1, es);
 pfree(buf);
}
