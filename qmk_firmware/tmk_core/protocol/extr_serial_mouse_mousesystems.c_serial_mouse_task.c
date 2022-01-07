
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {void* y; void* x; int buttons; void* v; void* h; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ report_mouse_t ;
typedef int int8_t ;
typedef int int16_t ;


 void* MAX (int ,int) ;
 int MOUSE_BTN1 ;
 int MOUSE_BTN2 ;
 int MOUSE_BTN3 ;
 scalar_t__ debug_mouse ;
 int host_mouse_send (TYPE_1__*) ;
 int print_usb_data (TYPE_1__*) ;
 int serial_recv2 () ;
 int xprintf (char*,int) ;

void serial_mouse_task(void) {

    static uint8_t buffer[5];
    static int buffer_cur = 0;

    int16_t rcv;

    report_mouse_t report = {0, 0, 0, 0, 0};

    rcv = serial_recv2();
    if (rcv < 0)
        return;

    if (debug_mouse) xprintf("serial_mouse: byte: %04X\n", rcv);
    if (buffer_cur == 0 && (rcv >> 3) != 0x10) return;

    buffer[buffer_cur++] = (uint8_t)rcv;

    if (buffer_cur < 5) return;
    buffer_cur = 0;
    if (!(buffer[0] & (1 << 2))) report.buttons |= MOUSE_BTN1;
    if (!(buffer[0] & (1 << 1))) report.buttons |= MOUSE_BTN3;
    if (!(buffer[0] & (1 << 0))) report.buttons |= MOUSE_BTN2;


    report.x = MAX((int8_t)buffer[1], -127);
    report.y = MAX(-(int8_t)buffer[2], -127);

    print_usb_data(&report);
    host_mouse_send(&report);

    if (buffer[3] || buffer[4]) {
        report.x = MAX((int8_t)buffer[3], -127);
        report.y = MAX(-(int8_t)buffer[4], -127);

        print_usb_data(&report);
        host_mouse_send(&report);
    }
}
