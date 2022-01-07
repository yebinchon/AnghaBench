
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* palloc (int) ;
 int quote_literal_internal (char*,char const*,int) ;
 int strlen (char const*) ;

char *
quote_literal_cstr(const char *rawstr)
{
 char *result;
 int len;
 int newlen;

 len = strlen(rawstr);

 result = palloc(len * 2 + 3 + 1);

 newlen = quote_literal_internal(result, rawstr, len);
 result[newlen] = '\0';

 return result;
}
