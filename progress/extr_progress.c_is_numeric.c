
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char) ;

signed char is_numeric(char *str)
{
while (*str) {
    if(!isdigit(*str))
        return 0;
    str++;
}
return 1;
}
