
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mods; int* keys; } ;
typedef TYPE_1__ report_keyboard_t ;


 int serial_send (int) ;

__attribute__((used)) static void send_keyboard(report_keyboard_t *report)
{







    serial_send(0xFD);
    serial_send(9);
    serial_send(1);
    serial_send(report->mods);
    serial_send(0x00);
    serial_send(report->keys[0]);
    serial_send(report->keys[1]);
    serial_send(report->keys[2]);
    serial_send(report->keys[3]);
    serial_send(report->keys[4]);
    serial_send(report->keys[5]);
}
