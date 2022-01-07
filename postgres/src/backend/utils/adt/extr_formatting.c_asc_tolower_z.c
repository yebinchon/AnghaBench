
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* asc_tolower (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
asc_tolower_z(const char *buff)
{
 return asc_tolower(buff, strlen(buff));
}
