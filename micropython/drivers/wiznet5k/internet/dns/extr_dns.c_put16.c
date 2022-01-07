
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



uint8_t * put16(uint8_t * s, uint16_t i)
{
 *s++ = i >> 8;
 *s++ = i;
 return s;
}
