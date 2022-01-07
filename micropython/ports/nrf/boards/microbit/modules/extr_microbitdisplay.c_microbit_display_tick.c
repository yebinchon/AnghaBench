
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int brightnesses; scalar_t__ previous_brightness; int active; } ;


 int DISPLAY_TICKER_SLOT ;
 int GREYSCALE_MASK ;
 int callback ;
 int displayAdvanceRow (TYPE_1__*) ;
 TYPE_1__ microbit_display_obj ;
 int microbit_display_update () ;
 int set_ticker_callback (int ,int ,int) ;

void microbit_display_tick(void) {

    if (!microbit_display_obj.active) {
        return;
    }

    displayAdvanceRow(&microbit_display_obj);

    microbit_display_update();
    microbit_display_obj.previous_brightness = 0;
    if (microbit_display_obj.brightnesses & GREYSCALE_MASK) {
        set_ticker_callback(DISPLAY_TICKER_SLOT, callback, 1800);
    }
}
