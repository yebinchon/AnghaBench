
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int* raw; } ;
typedef TYPE_1__ report_keyboard_t ;


 size_t KEYBOARD_REPORT_SIZE ;
 int bluefruit_serial_send (int) ;
 int bluefruit_trace_footer () ;
 int bluefruit_trace_header () ;

__attribute__((used)) static void send_keyboard(report_keyboard_t *report) {



    bluefruit_serial_send(0xFD);
    for (uint8_t i = 0; i < KEYBOARD_REPORT_SIZE; i++) {
        bluefruit_serial_send(report->raw[i]);
    }



}
