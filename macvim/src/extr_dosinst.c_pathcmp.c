
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ mytoupper (char) ;
 int strlen (char*) ;

__attribute__((used)) static int
pathcmp(char *p, int plen, char *q, int qlen)
{
    int i;

    if (plen < 0)
 plen = strlen(p);
    if (qlen < 0)
 qlen = strlen(q);
    for (i = 0; ; ++i)
    {

 if (i == plen)
 {
     if (i == qlen)
  return 0;
     if (i == qlen - 1 && (q[i] == '\\' || q[i] == '/'))
  return 0;
     return 1;
 }


 if (i == qlen)
 {
     if (i == plen)
  return 0;
     if (i == plen - 1 && (p[i] == '\\' || p[i] == '/'))
  return 0;
     return 1;
 }

 if (!(mytoupper(p[i]) == mytoupper(q[i])
  || ((p[i] == '/' || p[i] == '\\')
      && (q[i] == '/' || q[i] == '\\'))))
     return 1;
    }

}
