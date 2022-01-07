
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ usage; int report_id; } ;
typedef TYPE_1__ report_extra_t ;
typedef int report ;


 int REPORT_ID_CONSUMER ;
 scalar_t__ usbInterruptIsReady3 () ;
 int usbSetInterrupt3 (void*,int) ;

__attribute__((used)) static void send_consumer(uint16_t data) {
    static uint16_t last_data = 0;
    if (data == last_data) return;
    last_data = data;

    report_extra_t report = {.report_id = REPORT_ID_CONSUMER, .usage = data};
    if (usbInterruptIsReady3()) {
        usbSetInterrupt3((void *)&report, sizeof(report));
    }
}
