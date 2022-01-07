
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ errno ;
 unsigned long long strtoull (char const*,char**,int) ;

__attribute__((used)) static unsigned long long xstrtoull(const char *p, char **end)
{
 if (*p == '0') {
  *end = (char *)p + 1;
  return 0;
 } else if ('1' <= *p && *p <= '9') {
  unsigned long long val;

  errno = 0;
  val = strtoull(p, end, 10);
  assert(errno == 0);
  return val;
 } else
  assert(0);
}
