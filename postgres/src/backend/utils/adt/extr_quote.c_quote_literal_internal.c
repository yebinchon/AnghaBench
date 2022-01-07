
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESCAPE_STRING_SYNTAX ;
 scalar_t__ SQL_STR_DOUBLE (char const,int) ;

__attribute__((used)) static size_t
quote_literal_internal(char *dst, const char *src, size_t len)
{
 const char *s;
 char *savedst = dst;

 for (s = src; s < src + len; s++)
 {
  if (*s == '\\')
  {
   *dst++ = ESCAPE_STRING_SYNTAX;
   break;
  }
 }

 *dst++ = '\'';
 while (len-- > 0)
 {
  if (SQL_STR_DOUBLE(*src, 1))
   *dst++ = *src;
  *dst++ = *src++;
 }
 *dst++ = '\'';

 return dst - savedst;
}
