
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ xmalloc (int) ;

char *
xstrdup(const char * s)
{
  int len;
  char * p;

  if (s == 0)
  {
    return 0;
  }
  len = strlen(s);
  p = (char *) xmalloc(len + 1);
  strcpy(p, s);
  return p;
}
