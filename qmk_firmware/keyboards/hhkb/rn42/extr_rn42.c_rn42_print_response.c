
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int rn42_getc () ;
 int xprintf (char*,int) ;

void rn42_print_response(void)
{
    int16_t c;
    while ((c = rn42_getc()) != -1) {
        xprintf("%c", c);
    }
}
