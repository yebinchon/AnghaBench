
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; int buttons; } ;
typedef TYPE_1__ report_mouse_t ;


 int PS2_MOUSE_BTN_MASK ;
 scalar_t__ X_IS_NEG ;
 int X_IS_OVF ;
 scalar_t__ Y_IS_NEG ;
 int Y_IS_OVF ;

__attribute__((used)) static inline void ps2_mouse_convert_report_to_hid(report_mouse_t *mouse_report) {







    mouse_report->x = X_IS_NEG ? ((!X_IS_OVF && -127 <= mouse_report->x && mouse_report->x <= -1) ? mouse_report->x : -127) : ((!X_IS_OVF && 0 <= mouse_report->x && mouse_report->x <= 127) ? mouse_report->x : 127);
    mouse_report->y = Y_IS_NEG ? ((!Y_IS_OVF && -127 <= mouse_report->y && mouse_report->y <= -1) ? mouse_report->y : -127) : ((!Y_IS_OVF && 0 <= mouse_report->y && mouse_report->y <= 127) ? mouse_report->y : 127);


    mouse_report->buttons &= PS2_MOUSE_BTN_MASK;






    mouse_report->y = -mouse_report->y;

}
