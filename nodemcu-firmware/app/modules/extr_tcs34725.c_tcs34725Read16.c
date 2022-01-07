
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int tcs34725Read8 (int) ;

uint16_t tcs34725Read16(uint8_t reg)
{
 uint8_t low = tcs34725Read8(reg);
 uint8_t high = tcs34725Read8(++reg);

 return (high << 8) | low;
}
