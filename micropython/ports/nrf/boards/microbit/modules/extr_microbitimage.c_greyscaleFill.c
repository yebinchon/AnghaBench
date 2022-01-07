
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_int_t ;
struct TYPE_3__ {int width; int height; int* byte_data; } ;
typedef TYPE_1__ greyscale_t ;



void greyscaleFill(greyscale_t * p_greyscale, mp_int_t val) {
    mp_int_t byte = (val<<4) | val;
    for (int i = 0; i < ((p_greyscale->width*p_greyscale->height+1)>>1); i++) {
        p_greyscale->byte_data[i] = byte;
    }
}
