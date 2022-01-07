
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int PQmblen (char const*,int) ;
 int free (char*) ;
 char* pg_malloc (int) ;
 scalar_t__ strchr (char const*,char) ;
 int strlen (char const*) ;

char *
quote_if_needed(const char *source, const char *entails_quote,
    char quote, char escape, int encoding)
{
 const char *src;
 char *ret;
 char *dst;
 bool need_quotes = 0;

 Assert(source != ((void*)0));
 Assert(quote != '\0');

 src = source;
 dst = ret = pg_malloc(2 * strlen(src) + 3);

 *dst++ = quote;

 while (*src)
 {
  char c = *src;
  int i;

  if (c == quote)
  {
   need_quotes = 1;
   *dst++ = quote;
  }
  else if (c == escape)
  {
   need_quotes = 1;
   *dst++ = escape;
  }
  else if (strchr(entails_quote, c))
   need_quotes = 1;

  i = PQmblen(src, encoding);
  while (i--)
   *dst++ = *src++;
 }

 *dst++ = quote;
 *dst = '\0';

 if (!need_quotes)
 {
  free(ret);
  ret = ((void*)0);
 }

 return ret;
}
