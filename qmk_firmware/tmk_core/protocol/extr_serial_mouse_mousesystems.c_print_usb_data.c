
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h; int v; int y; int x; int buttons; } ;
typedef TYPE_1__ report_mouse_t ;


 int debug_mouse ;
 int xprintf (char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void print_usb_data(const report_mouse_t *report) {
    if (!debug_mouse) return;

    xprintf("serial_mouse usb: [%02X|%d %d %d %d]\n", report->buttons, report->x, report->y, report->v, report->h);
}
