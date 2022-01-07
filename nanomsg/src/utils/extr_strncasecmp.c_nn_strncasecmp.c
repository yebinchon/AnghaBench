
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tolower (char const) ;

int
nn_strncasecmp(const char *a, const char *b, size_t len)
{
 int rv;
 size_t count;
 for (count = 0; count < len; count++) {
  if ((*a == 0) && (*b == 0)) {
   return (0);
  }
  if ((rv = tolower(*a) - tolower(*b)) != 0) {
   return (rv);
  }
  a++;
  b++;
 }
 return (0);
}
