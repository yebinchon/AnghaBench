
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int PQmblen (char*,int) ;

void
strip_quotes(char *source, char quote, char escape, int encoding)
{
 char *src;
 char *dst;

 Assert(source != ((void*)0));
 Assert(quote != '\0');

 src = dst = source;

 if (*src && *src == quote)
  src++;

 while (*src)
 {
  char c = *src;
  int i;

  if (c == quote && src[1] == '\0')
   break;
  else if (c == quote && src[1] == quote)
   src++;
  else if (c == escape && src[1] != '\0')
   src++;

  i = PQmblen(src, encoding);
  while (i--)
   *dst++ = *src++;
 }

 *dst = '\0';
}
