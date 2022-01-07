
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buttons; int x; int y; int v; int h; } ;
typedef TYPE_1__ report_mouse_t ;


 int bluefruit_serial_send (int) ;
 int bluefruit_trace_footer () ;
 int bluefruit_trace_header () ;

__attribute__((used)) static void send_mouse(report_mouse_t *report) {



    bluefruit_serial_send(0xFD);
    bluefruit_serial_send(0x00);
    bluefruit_serial_send(0x03);
    bluefruit_serial_send(report->buttons);
    bluefruit_serial_send(report->x);
    bluefruit_serial_send(report->y);
    bluefruit_serial_send(report->v);
    bluefruit_serial_send(report->h);
    bluefruit_serial_send(0x00);



}
