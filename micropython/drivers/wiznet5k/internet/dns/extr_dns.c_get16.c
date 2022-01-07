
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



uint16_t get16(uint8_t * s)
{
 uint16_t i;
 i = *s++ << 8;
 i = i + *s;
 return i;
}
