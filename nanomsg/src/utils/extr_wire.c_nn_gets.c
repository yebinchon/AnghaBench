
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;



uint16_t nn_gets (const uint8_t *buf)
{
    return (((uint16_t) buf [0]) << 8) |
           ((uint16_t) buf [1]);
}
