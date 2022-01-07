
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_int_t ;
struct TYPE_3__ {int** image_buffer; int brightnesses; } ;
typedef TYPE_1__ microbit_display_obj_t ;


 int MAX_BRIGHTNESS ;
 int mp_raise_ValueError (char*) ;

void microbit_display_set_pixel(microbit_display_obj_t *display, mp_int_t x, mp_int_t y, mp_int_t bright) {
    if (x < 0 || y < 0 || x > 4 || y > 4) {
        mp_raise_ValueError("index out of bounds.");
    }
    if (bright < 0 || bright > MAX_BRIGHTNESS) {
        mp_raise_ValueError("brightness out of bounds.");
    }
    display->image_buffer[x][y] = bright;
    display->brightnesses |= (1 << bright);
}
