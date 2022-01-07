
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mp_uint_t ;
struct TYPE_4__ {int previous_brightness; } ;
typedef TYPE_1__ microbit_display_obj_t ;
typedef int int32_t ;


 int DISPLAY_TICKER_SLOT ;
 int MAX_BRIGHTNESS ;
 int clear_ticker_callback (int ) ;
 int displaySetPinsForRow (TYPE_1__*,int) ;
 TYPE_1__ microbit_display_obj ;
 int* render_timings ;

__attribute__((used)) static int32_t callback(void) {
    microbit_display_obj_t *display = &microbit_display_obj;
    mp_uint_t brightness = display->previous_brightness;
    displaySetPinsForRow(display, brightness);
    brightness += 1;
    if (brightness == MAX_BRIGHTNESS) {
        clear_ticker_callback(DISPLAY_TICKER_SLOT);
        return -1;
    }
    display->previous_brightness = brightness;

    return render_timings[brightness];
}
