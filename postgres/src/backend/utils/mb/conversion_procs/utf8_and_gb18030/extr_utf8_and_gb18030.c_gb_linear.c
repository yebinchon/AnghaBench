
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



__attribute__((used)) static inline uint32
gb_linear(uint32 gb)
{
 uint32 b0 = (gb & 0xff000000) >> 24;
 uint32 b1 = (gb & 0x00ff0000) >> 16;
 uint32 b2 = (gb & 0x0000ff00) >> 8;
 uint32 b3 = (gb & 0x000000ff);

 return b0 * 12600 + b1 * 1260 + b2 * 10 + b3 -
  (0x81 * 12600 + 0x30 * 1260 + 0x81 * 10 + 0x30);
}
