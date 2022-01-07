
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int analog_write_res ;

void analogWriteRes(uint32_t bits)
{
 if (bits < 1) {
  bits = 1;
 } else if (bits > 16) {
  bits = 16;
 }
 analog_write_res = bits;
}
