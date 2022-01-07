
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,char const*) ;
 double strtod (char*,int *) ;
 int to_locale (char*) ;

double os_strtod(const char *str)
{
 char buf[64];
 snprintf(buf, 64, "%s", str);
 to_locale(buf);
 return strtod(buf, ((void*)0));
}
