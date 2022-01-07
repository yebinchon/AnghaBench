
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pg_strdup (char const*) ;

char *
pstrdup(const char *in)
{
 return pg_strdup(in);
}
