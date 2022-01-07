
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TINF_DATA ;


 int uzlib_get_byte (int *) ;

void tinf_skip_bytes(TINF_DATA *d, int num)
{
    while (num--) uzlib_get_byte(d);
}
