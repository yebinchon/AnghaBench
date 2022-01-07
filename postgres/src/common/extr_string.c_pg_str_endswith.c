
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

bool
pg_str_endswith(const char *str, const char *end)
{
 size_t slen = strlen(str);
 size_t elen = strlen(end);


 if (elen > slen)
  return 0;


 str += slen - elen;
 return strcmp(str, end) == 0;
}
