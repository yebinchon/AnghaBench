
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct TYPE_12__ {int tick; } ;
struct TYPE_11__ {int b; int g; int r; } ;
struct TYPE_8__ {int * b; int * g; int * r; } ;
struct TYPE_10__ {TYPE_2__ rgb; } ;
struct TYPE_7__ {int SDB_N; } ;
struct TYPE_9__ {TYPE_1__ bit; } ;


 double BREATHE_MAX_STEP ;
 double BREATHE_MIN_STEP ;
 double BREATHE_STEP ;
 int I2C_LED_Q_GCR (size_t) ;
 int I2C_LED_Q_PWM (size_t) ;
 size_t ISSI3733_DRIVER_COUNT ;
 size_t ISSI3733_LED_COUNT ;
 double breathe_dir ;
 int breathe_mult ;
 TYPE_6__ g_rgb_counters ;
 scalar_t__ gcr_actual ;
 scalar_t__ gcr_actual_last ;
 int i2c_led_q_run () ;
 scalar_t__ i2c_led_q_running ;
 double led_animation_breathe_cur ;
 scalar_t__ led_animation_breathing ;
 float led_animation_speed ;
 TYPE_5__* led_buffer ;
 int led_enabled ;
 TYPE_4__* led_map ;
 float pomod ;
 TYPE_3__ sr_exp_data ;

void flush(void) {





    if (!sr_exp_data.bit.SDB_N) {
        return;
    }



    while (i2c_led_q_running) {
    }


    for (uint8_t i = 0; i < ISSI3733_LED_COUNT; i++) {
        *led_map[i].rgb.r = led_buffer[i].r;
        *led_map[i].rgb.g = led_buffer[i].g;
        *led_map[i].rgb.b = led_buffer[i].b;
    }
    uint8_t drvid;


    if (gcr_actual != gcr_actual_last) {
        for (drvid = 0; drvid < ISSI3733_DRIVER_COUNT; drvid++) I2C_LED_Q_GCR(drvid);
        gcr_actual_last = gcr_actual;
    }

    for (drvid = 0; drvid < ISSI3733_DRIVER_COUNT; drvid++) I2C_LED_Q_PWM(drvid);

    i2c_led_q_run();
}
