
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char toupper (char) ;

__attribute__((used)) static void
my_strupr(char *str)
{


    while (*str)
    {
        *str = toupper(*str);
        str++;
    }
}
