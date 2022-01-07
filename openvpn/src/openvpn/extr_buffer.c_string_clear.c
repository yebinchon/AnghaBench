
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int secure_memzero (char*,int ) ;
 int strlen (char*) ;

void
string_clear(char *str)
{
    if (str)
    {
        secure_memzero(str, strlen(str));
    }
}
