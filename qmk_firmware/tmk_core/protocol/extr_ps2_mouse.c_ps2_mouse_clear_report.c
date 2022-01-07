
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buttons; scalar_t__ h; scalar_t__ v; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ report_mouse_t ;



__attribute__((used)) static inline void ps2_mouse_clear_report(report_mouse_t *mouse_report) {
    mouse_report->x = 0;
    mouse_report->y = 0;
    mouse_report->v = 0;
    mouse_report->h = 0;
    mouse_report->buttons = 0;
}
