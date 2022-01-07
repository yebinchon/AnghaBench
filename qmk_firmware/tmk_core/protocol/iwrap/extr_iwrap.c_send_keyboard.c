
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mods; int* keys; } ;
typedef TYPE_1__ report_keyboard_t ;


 int MUX_FOOTER (int) ;
 int MUX_HEADER (int,int) ;
 int iwrap_check_connection () ;
 int iwrap_connected () ;
 int xmit (int) ;

__attribute__((used)) static void send_keyboard(report_keyboard_t *report) {
    if (!iwrap_connected() && !iwrap_check_connection()) return;
    MUX_HEADER(0x01, 0x0c);

    xmit(0x9f);
    xmit(0x0a);
    xmit(0xa1);
    xmit(0x01);
    xmit(report->mods);
    xmit(0x00);
    xmit(report->keys[0]);
    xmit(report->keys[1]);
    xmit(report->keys[2]);
    xmit(report->keys[3]);
    xmit(report->keys[4]);
    xmit(report->keys[5]);
    MUX_FOOTER(0x01);
}
