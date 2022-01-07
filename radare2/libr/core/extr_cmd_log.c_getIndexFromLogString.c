
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int getIndexFromLogString(const char *s) {
 int len = strlen (s);
 const char *m = s + len;
 int nlctr = 2;
 const char *nl = ((void*)0);
 while (m > s) {
  if (*m == '\n') {
   nl = m;
   if (--nlctr < 1) {
    return atoi (m + 1);
   }
  }
  m--;
 }
  return atoi (nl?nl + 1: s);
 return -1;
}
