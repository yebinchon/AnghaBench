
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint8_t ;
typedef int mp_int_t ;
struct TYPE_3__ {unsigned int pixel44; unsigned int* bits24; } ;
typedef TYPE_1__ monochrome_5by5_t ;



uint8_t monochromeGetPixelValue(monochrome_5by5_t * p_mono, mp_int_t x, mp_int_t y) {
    unsigned int index = y*5+x;
    if (index == 24)
        return p_mono->pixel44;
    return (p_mono->bits24[index>>3] >> (index&7))&1;
}
