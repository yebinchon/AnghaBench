
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int do_disable; int beating; scalar_t__ on_time; scalar_t__ off_time; scalar_t__ enabled; } ;


 int MAP_GPIOPinWrite (int ,int ,int ) ;
 int MICROPY_SYS_LED_PORT ;
 int MICROPY_SYS_LED_PORT_PIN ;
 scalar_t__ MPERROR_HEARTBEAT_OFF_MS ;
 scalar_t__ MPERROR_HEARTBEAT_ON_MS ;
 scalar_t__ mp_hal_ticks_ms () ;
 TYPE_1__ mperror_heart_beat ;

void mperror_heartbeat_signal (void) {
    if (mperror_heart_beat.do_disable) {
        mperror_heart_beat.do_disable = 0;
    } else if (mperror_heart_beat.enabled) {
        if (!mperror_heart_beat.beating) {
            if ((mperror_heart_beat.on_time = mp_hal_ticks_ms()) - mperror_heart_beat.off_time > MPERROR_HEARTBEAT_OFF_MS) {
                MAP_GPIOPinWrite(MICROPY_SYS_LED_PORT, MICROPY_SYS_LED_PORT_PIN, MICROPY_SYS_LED_PORT_PIN);
                mperror_heart_beat.beating = 1;
            }
        } else {
            if ((mperror_heart_beat.off_time = mp_hal_ticks_ms()) - mperror_heart_beat.on_time > MPERROR_HEARTBEAT_ON_MS) {
                MAP_GPIOPinWrite(MICROPY_SYS_LED_PORT, MICROPY_SYS_LED_PORT_PIN, 0);
                mperror_heart_beat.beating = 0;
            }
        }
    }
}
