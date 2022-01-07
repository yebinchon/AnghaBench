
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static inline uint32_t convert_6_to_8bit(uint16_t val)
{
 return (uint32_t)((double)(val & 0x3F) * (255.0 / 63.0));
}
