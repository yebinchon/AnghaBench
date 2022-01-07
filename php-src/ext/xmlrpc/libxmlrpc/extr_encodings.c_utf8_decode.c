
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* convert (char const*,int,int*,char*,char const*) ;

char* utf8_decode(const char *s, int len, int *newlen, const char* encoding)
{
   return convert(s, len, newlen, "UTF-8", encoding);
}
