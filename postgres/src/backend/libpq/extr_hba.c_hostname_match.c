
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pg_strcasecmp (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool
hostname_match(const char *pattern, const char *actual_hostname)
{
 if (pattern[0] == '.')
 {
  size_t plen = strlen(pattern);
  size_t hlen = strlen(actual_hostname);

  if (hlen < plen)
   return 0;

  return (pg_strcasecmp(pattern, actual_hostname + (hlen - plen)) == 0);
 }
 else
  return (pg_strcasecmp(pattern, actual_hostname) == 0);
}
