
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* charsets ;
 scalar_t__ strcasecmp (unsigned char const*,char const*) ;
 scalar_t__ strlen (unsigned char const*) ;

__attribute__((used)) static int find_charset(const char *name)
{
 const unsigned char *s;
 for (s=charsets; *s<0xff && strcasecmp(s+1, name); s+=strlen(s)+1);
 return *s;
}
