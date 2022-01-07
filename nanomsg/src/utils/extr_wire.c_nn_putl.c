
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



void nn_putl (uint8_t *buf, uint32_t val)
{
    buf [0] = (uint8_t) (((val) >> 24) & 0xff);
    buf [1] = (uint8_t) (((val) >> 16) & 0xff);
    buf [2] = (uint8_t) (((val) >> 8) & 0xff);
    buf [3] = (uint8_t) (val & 0xff);
}
