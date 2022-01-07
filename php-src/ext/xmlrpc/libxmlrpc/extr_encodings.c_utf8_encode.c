
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* convert (char const*,int,int*,char const*,char*) ;

char* utf8_encode(const char *s, int len, int *newlen, const char* encoding)
{
   return convert(s, len, newlen, encoding, "UTF-8");
}
