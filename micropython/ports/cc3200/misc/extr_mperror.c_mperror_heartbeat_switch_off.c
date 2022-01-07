
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ off_time; scalar_t__ on_time; scalar_t__ enabled; } ;


 int MAP_GPIOPinWrite (int ,int ,int ) ;
 int MICROPY_SYS_LED_PORT ;
 int MICROPY_SYS_LED_PORT_PIN ;
 TYPE_1__ mperror_heart_beat ;

void mperror_heartbeat_switch_off (void) {
    if (mperror_heart_beat.enabled) {
        mperror_heart_beat.on_time = 0;
        mperror_heart_beat.off_time = 0;
        MAP_GPIOPinWrite(MICROPY_SYS_LED_PORT, MICROPY_SYS_LED_PORT_PIN, 0);
    }
}
