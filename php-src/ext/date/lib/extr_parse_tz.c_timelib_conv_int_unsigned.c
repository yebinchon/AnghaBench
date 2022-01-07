
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t timelib_conv_int_unsigned(uint32_t value)
{
 return
  ((value & 0x000000ff) << 24) +
  ((value & 0x0000ff00) << 8) +
  ((value & 0x00ff0000) >> 8) +
  ((value & 0xff000000) >> 24);
}
