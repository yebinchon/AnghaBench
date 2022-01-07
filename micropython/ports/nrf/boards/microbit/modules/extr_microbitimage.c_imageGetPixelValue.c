
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int mp_int_t ;
struct TYPE_4__ {scalar_t__ five; } ;
struct TYPE_5__ {int greyscale; int monochrome_5by5; TYPE_1__ base; } ;
typedef TYPE_2__ microbit_image_obj_t ;


 int MAX_BRIGHTNESS ;
 int greyscaleGetPixelValue (int *,int ,int ) ;
 int monochromeGetPixelValue (int *,int ,int ) ;

uint8_t imageGetPixelValue(microbit_image_obj_t * p_image, mp_int_t x, mp_int_t y) {
    if (p_image->base.five)
        return monochromeGetPixelValue(&p_image->monochrome_5by5, x, y)*MAX_BRIGHTNESS;
    else
        return greyscaleGetPixelValue(&p_image->greyscale, x, y);
}
