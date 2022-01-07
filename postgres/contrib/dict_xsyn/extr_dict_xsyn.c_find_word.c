
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_mblen (char*) ;
 scalar_t__ t_isspace (char*) ;

__attribute__((used)) static char *
find_word(char *in, char **end)
{
 char *start;

 *end = ((void*)0);
 while (*in && t_isspace(in))
  in += pg_mblen(in);

 if (!*in || *in == '#')
  return ((void*)0);
 start = in;

 while (*in && !t_isspace(in))
  in += pg_mblen(in);

 *end = in;

 return start;
}
