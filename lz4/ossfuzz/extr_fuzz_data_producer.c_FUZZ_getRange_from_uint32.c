
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t FUZZ_getRange_from_uint32(uint32_t seed, uint32_t min, uint32_t max)
{
    uint32_t range = max - min;
    if (range == 0xffffffff) {
      return seed;
    }
    return min + seed % (range + 1);
}
