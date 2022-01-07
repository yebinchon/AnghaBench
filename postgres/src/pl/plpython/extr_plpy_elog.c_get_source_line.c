
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 char* pnstrdup (char const*,int) ;
 char* pstrdup (char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static char *
get_source_line(const char *src, int lineno)
{
 const char *s = ((void*)0);
 const char *next = src;
 int current = 0;


 if (lineno <= 0)
  return ((void*)0);

 while (current < lineno)
 {
  s = next;
  next = strchr(s + 1, '\n');
  current++;
  if (next == ((void*)0))
   break;
 }

 if (current != lineno)
  return ((void*)0);

 while (*s && isspace((unsigned char) *s))
  s++;

 if (next == ((void*)0))
  return pstrdup(s);






 if (next < s)
  return ((void*)0);

 return pnstrdup(s, next - s);
}
