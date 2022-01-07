
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint32 ;


 scalar_t__ isdigit (char) ;

uint32_t lwip_getul(char *str)
{
    uint32 ret = 0;

    while (isdigit(*str))
    {
        ret = ret * 10 + *str++ - '0';
    }

    return ret;
}
