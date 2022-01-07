
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* lowerstr_with_len (char const*,int ) ;
 int strlen (char const*) ;

char *
lowerstr(const char *str)
{
 return lowerstr_with_len(str, strlen(str));
}
