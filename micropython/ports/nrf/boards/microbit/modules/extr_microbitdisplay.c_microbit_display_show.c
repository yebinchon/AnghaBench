
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t mp_int_t ;
typedef int microbit_image_obj_t ;
struct TYPE_3__ {int** image_buffer; size_t brightnesses; } ;
typedef TYPE_1__ microbit_display_obj_t ;


 int imageGetPixelValue (int *,size_t,size_t) ;
 int imageHeight (int *) ;
 int imageWidth (int *) ;
 size_t min (int ,int) ;

void microbit_display_show(microbit_display_obj_t *display, microbit_image_obj_t *image) {
    mp_int_t w = min(imageWidth(image), 5);
    mp_int_t h = min(imageHeight(image), 5);
    mp_int_t x = 0;
    mp_int_t brightnesses = 0;
    for (; x < w; ++x) {
        mp_int_t y = 0;
        for (; y < h; ++y) {
            uint8_t pix = imageGetPixelValue(image, x, y);
            display->image_buffer[x][y] = pix;
            brightnesses |= (1 << pix);
        }
        for (; y < 5; ++y) {
            display->image_buffer[x][y] = 0;
        }
    }
    for (; x < 5; ++x) {
        for (mp_int_t y = 0; y < 5; ++y) {
            display->image_buffer[x][y] = 0;
        }
    }
    display->brightnesses = brightnesses;
}
