
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int x; int y; int buttons; } ;
typedef TYPE_1__ report_mouse_t ;
typedef int int16_t ;


 void* MAX (int,int) ;
 int MOUSE_BTN1 ;
 int MOUSE_BTN2 ;
 int MOUSE_BTN3 ;
 scalar_t__ debug_mouse ;
 int host_mouse_send (TYPE_1__*) ;
 int print_usb_data (TYPE_1__*) ;
 int serial_recv2 () ;
 int xprintf (char*,int) ;

void serial_mouse_task(void) {

    static uint8_t buffer[3];
    static int buffer_cur = 0;

    static report_mouse_t report = {};

    int16_t rcv;

    rcv = serial_recv2();
    if (rcv < 0)
        return;

    if (debug_mouse) xprintf("serial_mouse: byte: %04X\n", rcv);





    if (rcv & (1 << 6)) buffer_cur = 0;

    buffer[buffer_cur] = (uint8_t)rcv;

    if (buffer_cur == 0 && buffer[buffer_cur] == 0x20) {




        report.buttons |= MOUSE_BTN3;
        report.x = report.y = 0;

        print_usb_data(&report);
        host_mouse_send(&report);
        return;
    }

    buffer_cur++;

    if (buffer_cur < 3) return;
    buffer_cur = 0;







    report.buttons = 0;
    if (buffer[0] & (1 << 5)) report.buttons |= MOUSE_BTN1;
    if (buffer[0] & (1 << 4)) report.buttons |= MOUSE_BTN2;

    report.x = (buffer[0] << 6) | buffer[1];
    report.y = ((buffer[0] << 4) & 0xC0) | buffer[2];


    report.x = MAX(report.x, -127);
    report.y = MAX(report.y, -127);
    print_usb_data(&report);
    host_mouse_send(&report);
}
