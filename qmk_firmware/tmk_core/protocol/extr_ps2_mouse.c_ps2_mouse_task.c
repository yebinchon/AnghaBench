
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_7__ {int buttons; int x; int y; int v; } ;


 scalar_t__ PS2_ACK ;
 scalar_t__ PS2_MOUSE_BTN_MASK ;
 int PS2_MOUSE_READ_DATA ;
 int PS2_MOUSE_SCROLL_MASK ;
 int PS2_MOUSE_V_MULTIPLIER ;
 int PS2_MOUSE_X_MULTIPLIER ;
 int PS2_MOUSE_Y_MULTIPLIER ;
 scalar_t__ debug_mouse ;
 int host_mouse_send (TYPE_1__*) ;
 TYPE_1__ mouse_report ;
 int print (char*) ;
 int ps2_host_recv_response () ;
 scalar_t__ ps2_host_send (int ) ;
 int ps2_mouse_clear_report (TYPE_1__*) ;
 int ps2_mouse_convert_report_to_hid (TYPE_1__*) ;
 int ps2_mouse_print_report (TYPE_1__*) ;
 int ps2_mouse_scroll_button_task (TYPE_1__*) ;

void ps2_mouse_task(void) {
    static uint8_t buttons_prev = 0;
    extern int tp_buttons;


    uint8_t rcv;
    rcv = ps2_host_send(PS2_MOUSE_READ_DATA);
    if (rcv == PS2_ACK) {
        mouse_report.buttons = ps2_host_recv_response() | tp_buttons;
        mouse_report.x = ps2_host_recv_response() * PS2_MOUSE_X_MULTIPLIER;
        mouse_report.y = ps2_host_recv_response() * PS2_MOUSE_Y_MULTIPLIER;



    } else {
        if (debug_mouse) print("ps2_mouse: fail to get mouse packet\n");
        return;
    }


    if (mouse_report.x || mouse_report.y || mouse_report.v || ((mouse_report.buttons ^ buttons_prev) & PS2_MOUSE_BTN_MASK)) {




        buttons_prev = mouse_report.buttons;
        ps2_mouse_convert_report_to_hid(&mouse_report);







        host_mouse_send(&mouse_report);
    }

    ps2_mouse_clear_report(&mouse_report);
}
