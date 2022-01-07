
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buttons; int x; int y; int v; } ;
typedef TYPE_1__ report_mouse_t ;


 int serial_send (int) ;

__attribute__((used)) static void send_mouse(report_mouse_t *report)
{







    serial_send(0xFD);
    serial_send(5);
    serial_send(2);
    serial_send(report->buttons);
    serial_send(report->x);
    serial_send(report->y);
    serial_send(report->v);
}
