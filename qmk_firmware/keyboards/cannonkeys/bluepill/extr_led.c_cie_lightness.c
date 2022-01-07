
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t cie_lightness(uint16_t v) {
  if (v <= 5243)
    return v / 9;
  else {
    uint32_t y = (((uint32_t) v + 10486) << 8) / (10486 + 0xFFFFUL);


    y = y * y * y >> 8;
    if (y > 0xFFFFUL)
      return 0xFFFFU;
    else
      return (uint16_t) y;
  }
}
