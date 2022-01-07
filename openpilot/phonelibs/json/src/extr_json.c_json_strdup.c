
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (scalar_t__) ;
 int out_of_memory () ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *json_strdup(const char *str)
{
 char *ret = (char*) malloc(strlen(str) + 1);
 if (ret == ((void*)0))
  out_of_memory();
 strcpy(ret, str);
 return ret;
}
