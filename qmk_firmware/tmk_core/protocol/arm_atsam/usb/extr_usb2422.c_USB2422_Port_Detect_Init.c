
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DBGC (int ) ;
 int DBG_LED_OFF ;
 int DBG_LED_ON ;
 int DC_PORT_DETECT_INIT_BEGIN ;
 int DC_PORT_DETECT_INIT_COMPLETE ;
 int DC_PORT_DETECT_INIT_FAILED ;
 int PORT_DETECT_RETRY_INTERVAL ;
 int USB_active () ;
 int USB_set_host_by_voltage () ;
 int timer_read64 () ;
 scalar_t__ v_con_1 ;
 scalar_t__ v_con_2 ;

uint8_t USB2422_Port_Detect_Init(void) {
    uint32_t port_detect_retry_ms;
    uint32_t tmod;

    DBGC(DC_PORT_DETECT_INIT_BEGIN);

    USB_set_host_by_voltage();

    port_detect_retry_ms = timer_read64() + PORT_DETECT_RETRY_INTERVAL;

    while (!USB_active()) {
        tmod = timer_read64() % PORT_DETECT_RETRY_INTERVAL;

        if (v_con_1 > v_con_2)
        {

            if (tmod > 500 && tmod < 600) {
                DBG_LED_ON;
            } else {
                DBG_LED_OFF;
            }
        } else if (v_con_2 > v_con_1)
        {

            if (tmod > 500 && tmod < 600) {
                DBG_LED_ON;
            } else if (tmod > 700 && tmod < 800) {
                DBG_LED_ON;
            } else {
                DBG_LED_OFF;
            }
        }

        if (timer_read64() > port_detect_retry_ms) {
            DBGC(DC_PORT_DETECT_INIT_FAILED);
            return 0;
        }
    }

    DBGC(DC_PORT_DETECT_INIT_COMPLETE);

    return 1;
}
