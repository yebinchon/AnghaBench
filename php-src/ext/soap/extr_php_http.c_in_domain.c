
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int in_domain(const char *host, const char *domain)
{
  if (domain[0] == '.') {
    int l1 = strlen(host);
    int l2 = strlen(domain);
    if (l1 > l2) {
     return strcmp(host+l1-l2,domain) == 0;
    } else {
      return 0;
    }
  } else {
    return strcmp(host,domain) == 0;
  }
}
