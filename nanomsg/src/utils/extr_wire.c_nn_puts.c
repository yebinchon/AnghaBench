
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;



void nn_puts (uint8_t *buf, uint16_t val)
{
    buf [0] = (uint8_t) (((val) >> 8) & 0xff);
    buf [1] = (uint8_t) (val & 0xff);
}
