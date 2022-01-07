
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buttons; void* y; void* x; } ;
typedef TYPE_1__ report_mouse_t ;


 int MOUSE_BTN1 ;
 void* axisToMouseComponent (int ,int ,int ,int ) ;
 scalar_t__ cursorTimeout ;
 int lastCursor ;
 int maxCursorSpeed ;
 TYPE_1__ pointing_device_get_report () ;
 int pointing_device_send () ;
 int pointing_device_set_report (TYPE_1__) ;
 int readPin (int ) ;
 int swPin ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;
 int xOrigin ;
 int xPin ;
 int xPolarity ;
 int yOrigin ;
 int yPin ;
 int yPolarity ;

void pointing_device_task(void) {
    report_mouse_t report = pointing_device_get_report();


    if (timer_elapsed(lastCursor) > cursorTimeout) {
        lastCursor = timer_read();
        report.x = axisToMouseComponent(xPin, xOrigin, maxCursorSpeed, xPolarity);
        report.y = axisToMouseComponent(yPin, yOrigin, maxCursorSpeed, yPolarity);
    }

    if (!readPin(swPin)) {
        report.buttons |= MOUSE_BTN1;
    } else {
        report.buttons &= ~MOUSE_BTN1;
    }

    pointing_device_set_report(report);
    pointing_device_send();
}
