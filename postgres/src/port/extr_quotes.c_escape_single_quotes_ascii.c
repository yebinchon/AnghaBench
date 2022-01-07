
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SQL_STR_DOUBLE (char const,int) ;
 char* malloc (int) ;
 int strlen (char const*) ;

char *
escape_single_quotes_ascii(const char *src)
{
 int len = strlen(src),
    i,
    j;
 char *result = malloc(len * 2 + 1);

 if (!result)
  return ((void*)0);

 for (i = 0, j = 0; i < len; i++)
 {
  if (SQL_STR_DOUBLE(src[i], 1))
   result[j++] = src[i];
  result[j++] = src[i];
 }
 result[j] = '\0';
 return result;
}
