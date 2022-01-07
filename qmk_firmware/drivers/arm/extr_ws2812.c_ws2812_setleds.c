
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint16_t ;
struct TYPE_3__ {int w; int b; int r; int g; } ;
typedef TYPE_1__ LED_TYPE ;


 int RES ;
 int chSysLock () ;
 int chSysUnlock () ;
 int sendByte (int ) ;
 int wait_ns (int ) ;
 int ws2812_init () ;

void ws2812_setleds(LED_TYPE *ledarray, uint16_t leds) {
    static bool s_init = 0;
    if (!s_init) {
        ws2812_init();
        s_init = 1;
    }


    chSysLock();

    for (uint8_t i = 0; i < leds; i++) {

        sendByte(ledarray[i].g);
        sendByte(ledarray[i].r);
        sendByte(ledarray[i].b);



    }

    wait_ns(RES);

    chSysUnlock();
}
