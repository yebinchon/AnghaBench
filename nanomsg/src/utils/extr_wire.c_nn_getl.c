
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



uint32_t nn_getl (const uint8_t *buf)
{
    return (((uint32_t) buf [0]) << 24) |
           (((uint32_t) buf [1]) << 16) |
           (((uint32_t) buf [2]) << 8) |
           ((uint32_t) buf [3]);
}
