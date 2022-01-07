
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int putchar (int) ;

void nn_node_putchar (uint8_t c)
{
    if (c < 32 || c > 127)
        putchar ('?');
    else
        putchar (c);
}
