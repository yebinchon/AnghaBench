
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* psprintf (char*,char const*,char const*) ;
 int putenv (char*) ;

__attribute__((used)) static void
doputenv(const char *var, const char *val)
{
 char *s;

 s = psprintf("%s=%s", var, val);
 putenv(s);
}
