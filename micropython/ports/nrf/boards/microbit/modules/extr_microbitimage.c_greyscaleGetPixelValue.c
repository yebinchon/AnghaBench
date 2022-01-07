
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint8_t ;
typedef unsigned int mp_int_t ;
struct TYPE_3__ {unsigned int width; unsigned int* byte_data; } ;
typedef TYPE_1__ greyscale_t ;



uint8_t greyscaleGetPixelValue(greyscale_t * p_greyscale, mp_int_t x, mp_int_t y) {
    unsigned int index = y*p_greyscale->width+x;
    unsigned int shift = ((index<<2)&4);
    return (p_greyscale->byte_data[index>>1] >> shift)&15;
}
