
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int (* keyboard_leds ) () ;} ;


 TYPE_1__* driver ;
 int stub1 () ;

uint8_t host_keyboard_leds(void) {
    if (!driver) return 0;
    return (*driver->keyboard_leds)();
}
